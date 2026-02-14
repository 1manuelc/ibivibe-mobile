import 'package:ibiapabaapp/core/errors/failures/failures.dart';

class UserNotFoundFailure extends Failure {
  const UserNotFoundFailure({required super.message})
    : super(code: 'user_not_found');
}

class WrongPasswordFailure extends Failure {
  const WrongPasswordFailure({required super.message})
    : super(code: 'wrong_password');
}

class EmailAlreadyRegisteredFailure extends Failure {
  const EmailAlreadyRegisteredFailure({required super.message})
    : super(code: 'email_already_registered');
}

class PasswordMismatchFailure extends Failure {
  const PasswordMismatchFailure({required super.message})
    : super(code: 'password_mismatch');
}

class InvalidTokenFailure extends Failure {
  const InvalidTokenFailure({required super.message})
    : super(code: 'invalid_token');
}
