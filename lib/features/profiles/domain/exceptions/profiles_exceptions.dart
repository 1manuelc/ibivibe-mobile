import 'package:ibiapabaapp/core/errors/exceptions/exceptions.dart';

sealed class ProfileExceptions extends AppException {
  const ProfileExceptions(super.message, {super.code = 'PROFILES_ERROR'});
}

class NoActiveProfileException extends ProfileExceptions {
  const NoActiveProfileException()
    : super('Nenhum perfil ativo encontrado.', code: 'NO_ACTIVE_PROFILE');
}

class NoProfilesFoundException extends ProfileExceptions {
  const NoProfilesFoundException()
    : super('Nenhum perfil encontrado.', code: 'NO_PROFILES_FOUND');
}
