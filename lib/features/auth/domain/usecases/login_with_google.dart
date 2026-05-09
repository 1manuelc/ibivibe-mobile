import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/usecases/usecase.dart';
import 'package:ibiapabaapp/features/auth/domain/entities/google_auth_result.dart';
import 'package:ibiapabaapp/features/auth/domain/repositories/auth_repository.dart';

class LoginWithGoogle implements Usecase<GoogleAuthResult, LoginWithGoogleParams> {
  final AuthRepository repository;

  LoginWithGoogle(this.repository);

  @override
  Future<Either<AppFailure, GoogleAuthResult>> call(LoginWithGoogleParams params) {
    return repository.loginWithGoogle(idToken: params.idToken);
  }
}

class LoginWithGoogleParams {
  final String idToken;

  const LoginWithGoogleParams({required this.idToken});
}
