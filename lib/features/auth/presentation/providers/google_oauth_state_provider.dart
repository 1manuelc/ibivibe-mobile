import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/logger/handlers/controller_log_handler.dart';
import 'package:ibiapabaapp/core/logger/log_tags.dart';
import 'package:ibiapabaapp/core/logger/logger.dart';
import 'package:ibiapabaapp/features/accounts/domain/entities/account_type.dart';
import 'package:ibiapabaapp/features/accounts/domain/entities/gender.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/auth_result.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/google_auth_result.dart';
import 'package:ibiapabaapp/features/auth/domain/tags/auth_logtags.dart';
import 'package:ibiapabaapp/features/auth/domain/usecases/complete_google_registration.dart';
import 'package:ibiapabaapp/features/auth/domain/usecases/login_with_google.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/auth_providers.dart';
import 'package:ibiapabaapp/features/auth/presentation/providers/auth_state_provider.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_oauth_state_provider.g.dart';

@Riverpod(keepAlive: true)
class GoogleOAuthState extends _$GoogleOAuthState with ControllerLogHandler {
  @override
  late final Logger logger = ref.read(loggerProvider);

  @override
  LogFeature get feature => LogFeature.auth;

  @override
  GoogleOAuthData build() => const GoogleOAuthData();

  Future<bool> signInWithGoogle() async {
    state = state.copyWith(isLoading: true, failure: null);

    try {
      await GoogleSignIn.instance.initialize(
        clientId: _getClientId(),
        serverClientId: _getServerClientId(),
      );

      final GoogleSignInAccount account = await GoogleSignIn.instance
          .authenticate();

      final GoogleSignInAuthentication authentication = account.authentication;
      final String? idToken = authentication.idToken;

      if (idToken == null) {
        state = state.copyWith(
          isLoading: false,
          failure: const InternalFailure('Failed to get Google ID token'),
        );
        logControllerError(
          action: AuthAction.loginWithGoogle,
          failure: const InternalFailure('Failed to get Google ID token'),
        );
        return false;
      }

      final result = await ref
          .read(loginWithGoogleProvider)
          .call(LoginWithGoogleParams(idToken: idToken));

      return result.fold(
        (failure) {
          state = state.copyWith(isLoading: false, failure: failure);
          logControllerError(
            action: AuthAction.loginWithGoogle,
            failure: failure,
          );
          return false;
        },
        (googleAuthResult) {
          if (googleAuthResult.isNewUser) {
            state = state.copyWith(
              isLoading: false,
              tempToken: googleAuthResult.tempToken,
              googleAuthResult: googleAuthResult,
            );
            logControllerSuccess(action: AuthAction.loginWithGoogle);
            return true;
          } else if (googleAuthResult.account != null &&
              googleAuthResult.accessToken != null &&
              googleAuthResult.refreshToken != null) {
            // Existing user - initialize session
            final authResult = AuthResult(
              accessToken: googleAuthResult.accessToken!,
              refreshToken: googleAuthResult.refreshToken!,
              account: googleAuthResult.account!,
            );
            ref.read(authStateProvider.notifier).initSession(authResult);
            state = state.copyWith(
              isLoading: false,
              googleAuthResult: googleAuthResult,
            );
            logControllerSuccess(action: AuthAction.loginWithGoogle);
            return false;
          } else {
            state = state.copyWith(
              isLoading: false,
              failure: const InternalFailure('Invalid Google auth response'),
            );
            logControllerError(
              action: AuthAction.loginWithGoogle,
              failure: const InternalFailure('Invalid Google auth response'),
            );
            return false;
          }
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        failure: InternalFailure(e.toString()),
      );
      logControllerError(
        action: AuthAction.loginWithGoogle,
        failure: InternalFailure(e.toString()),
      );
      return false;
    }
  }

  Future<void> completeRegistration({
    required String slug,
    required AccountType type,
    Gender? gender,
  }) async {
    final tempToken = state.tempToken;
    if (tempToken == null) {
      state = state.copyWith(
        failure: const InternalFailure('No temp token found'),
      );
      return;
    }

    state = state.copyWith(isLoading: true, failure: null);

    try {
      final result = await ref
          .read(completeGoogleRegistrationProvider)
          .call(
            CompleteGoogleRegistrationParams(
              tempToken: tempToken,
              slug: slug,
              type: type,
              gender: gender,
            ),
          );

      result.fold(
        (failure) {
          state = state.copyWith(isLoading: false, failure: failure);
          logControllerError(
            action: AuthAction.completeGoogleRegistration,
            failure: failure,
          );
        },
        (response) {
          final authResult = AuthResult(
            accessToken: response.accessToken,
            refreshToken: response.refreshToken,
            account: response.account,
          );
          ref.read(authStateProvider.notifier).initSession(authResult);
          state = state.copyWith(
            isLoading: false,
            tempToken: null,
            googleAuthResult: null,
          );
          logControllerSuccess(action: AuthAction.completeGoogleRegistration);
        },
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        failure: InternalFailure(e.toString()),
      );
      logControllerError(
        action: AuthAction.completeGoogleRegistration,
        failure: InternalFailure(e.toString()),
      );
    }
  }

  void reset() {
    state = const GoogleOAuthData();
  }

  String _getClientId() {
    return dotenv.env['GOOGLE_CLIENT_ID'] ?? '';
  }

  String _getServerClientId() {
    return dotenv.env['GOOGLE_CLIENT_ID_WEB'] ?? '';
  }
}

class GoogleOAuthData {
  final bool isLoading;
  final String? tempToken;
  final GoogleAuthResult? googleAuthResult;
  final AppFailure? failure;

  const GoogleOAuthData({
    this.isLoading = false,
    this.tempToken,
    this.googleAuthResult,
    this.failure,
  });

  GoogleOAuthData copyWith({
    bool? isLoading,
    String? tempToken,
    GoogleAuthResult? googleAuthResult,
    AppFailure? failure,
    bool clearTempToken = false,
    bool clearGoogleAuthResult = false,
    bool clearFailure = false,
  }) {
    return GoogleOAuthData(
      isLoading: isLoading ?? this.isLoading,
      tempToken: clearTempToken ? null : (tempToken ?? this.tempToken),
      googleAuthResult: clearGoogleAuthResult
          ? null
          : (googleAuthResult ?? this.googleAuthResult),
      failure: clearFailure ? null : (failure ?? this.failure),
    );
  }
}
