import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/logger/handlers/controller_log_handler.dart';
import 'package:ibiapabaapp/core/logger/log_tags.dart';
import 'package:ibiapabaapp/core/logger/logger.dart';
import 'package:ibiapabaapp/core/storage/token_storage_provider.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/auth_result.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/account.dart';
import 'package:ibiapabaapp/features/auth/domain/tags/auth_logtags.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/auth_providers.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile.dart';
import 'package:ibiapabaapp/features/profiles/presentation/providers/profile_state_provider.dart';
import 'package:ibiapabaapp/features/profiles/presentation/providers/profiles_providers.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState with ControllerLogHandler {
  @override
  late final Logger logger = ref.read(loggerProvider);

  @override
  LogFeature get feature => LogFeature.session;

  @override
  AuthData build() => const AuthData();

  // TODO: refatorar para simplificar emaranhado de métodos
  Future<void> restore() async {
    await _restoreUser();
  }

  Future<void> _restoreUser() async {
    final authStorage = ref.read(authLocalStorageProvider);
    final tokenStorage = ref.read(tokenStorageProvider);

    final accessToken = await tokenStorage.getAccessToken();
    final refreshToken = await tokenStorage.getRefreshToken();
    if (accessToken == null || refreshToken == null) return;

    final getMeResult = await ref.read(getMeProvider).call();
    if (!ref.mounted) return;

    if (getMeResult.isRight()) {
      final user = getMeResult.getOrElse(() => throw StateError('unreachable'));
      await authStorage.saveAccount(user);
      _applyAccount(user, AuthStatus.verified);
      await _loadAccountProfiles();
      await ref.read(profileStateProvider.notifier).restore();
      logControllerSuccess(action: AuthAction.restore);
      return;
    }

    final failure = getMeResult.fold(
      (f) => f,
      (_) => throw StateError('unreachable'),
    );
    logControllerError(action: AuthAction.restore, failure: failure);

    if (failure is NetworkFailure) {
      final cached = await authStorage.getCachedAccount();
      if (cached != null) {
        _applyAccount(cached, AuthStatus.unverified);
        await ref
            .read(profileStateProvider.notifier)
            .restore(); // só cache local
        logControllerSuccess(action: AuthAction.restoreFromCache);
        return; // ← agora esse return encerra _restoreUser de verdade
      }
      // Cache vazio + sem rede = não dá para fazer nada, fica deslogado
      // NÃO chama refresh (também vai falhar por rede)
      return;
    }

    // Falha de autenticação (401, token inválido, etc): tenta refresh
    final refreshResult = await ref.read(refreshTokensProvider).call();
    if (!ref.mounted) return;

    await refreshResult.fold(
      (_) async => logout(),
      (authResult) async => _applySession(authResult),
    );
  }

  Future<void> _loadAccountProfiles() async {
    final result = await ref.read(getAccountProfilesProvider).call();
    if (!ref.mounted) return;

    result.fold(
      (failure) =>
          logControllerError(action: AuthAction.initSession, failure: failure),
      (profiles) async {
        // TODO: mover p/ profiles feature
        logControllerSuccess(action: AuthAction.getAccountProfiles);
        _applyAccountProfiles(profiles);
      },
    );
  }

  void _applyAccountProfiles(List<Profile> profiles) {
    ref.read(profileStateProvider.notifier).setProfiles(profiles);
  }

  Future<void> initSession(AuthResult result) async {
    final authStorage = ref.read(authLocalStorageProvider);
    final tokenStorage = ref.read(tokenStorageProvider);

    await tokenStorage.saveTokens(result);
    await authStorage.saveAccount(result.account);
    if (!ref.mounted) return;

    await _applySession(result);
    logControllerSuccess(action: AuthAction.initSession);
  }

  Future<void> _applySession(AuthResult result) async {
    _applyAccount(result.account, .verified);
    if (!ref.mounted) return;
  }

  void _applyAccount(Account account, AuthStatus status) {
    state = state.copyWith(account: account, status: status);
  }

  Future<void> logout() async {
    final authStorage = ref.read(authLocalStorageProvider);
    final tokenStorage = ref.read(tokenStorageProvider);
    await tokenStorage.clearTokens();
    await authStorage.clearAccount();

    state = const AuthData();
    logControllerSuccess(action: AuthAction.logout);
  }
}

enum AuthStatus {
  unauthenticated,
  verified, // online, validado com o backend
  unverified, // carregado do cache, não validado ainda
}

class AuthData {
  final Account? account;
  final AuthStatus status;

  const AuthData({this.account, this.status = AuthStatus.unauthenticated});

  bool get isAuthenticated =>
      account != null && status != AuthStatus.unauthenticated;
  bool get isVerified => status == AuthStatus.verified;

  AuthData copyWith({Account? account, AuthStatus? status}) {
    return AuthData(
      account: account ?? this.account,
      status: status ?? this.status,
    );
  }
}

@riverpod
AuthStatus currentAuthStatus(Ref ref) {
  return ref.watch(authStateProvider).status;
}

@riverpod
bool isAuthenticated(Ref ref) {
  return ref.watch(authStateProvider).isAuthenticated;
}
