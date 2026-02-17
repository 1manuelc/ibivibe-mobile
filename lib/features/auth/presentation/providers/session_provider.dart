import 'package:ibiapabaapp/core/storage/token_storage_provider.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/user.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/auth_result.dart';

part 'session_provider.g.dart';

@Riverpod(keepAlive: true)
class Session extends _$Session {
  @override
  User? build() => null;

  Future<void> restoreSession() async {
    final storage = ref.read(tokenStorageProvider);
    final accessToken = await storage.getAccessToken();
    final refreshToken = await storage.getRefreshToken();

    // CASO 1: Usuário deslogado
    if (accessToken == null && refreshToken == null) {
      state = null;
      return;
    }

    // Usuário com tokens armazenados => CASO 2: Tenta usar o accessToken guardado para pegar o usuário
    final getMeResult = await ref.read(getMeProvider).call();

    await getMeResult.fold(
      (failure) async {
        if (refreshToken != null) {
          final refreshResult = await ref.read(refreshTokensProvider).call();
          await refreshResult.fold(
            (f) => logout(), // falha do refresh, logout
            (authResult) => initSession(authResult),
          );
        } else {
          await logout();
        }
      },
      (user) async {
        state = user;
      },
    );
  }

  Future<void> initSession(AuthResult result) async {
    final storage = ref.read(tokenStorageProvider);
    await storage.saveTokens(result);
    state = result.user;
  }

  Future<void> logout() async {
    final storage = ref.read(tokenStorageProvider);
    await storage.clearTokens();
    state = null;
  }
}

@riverpod
bool isAuthenticated(Ref ref) {
  return ref.watch(sessionProvider) != null;
}
