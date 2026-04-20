import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/usecases/usecase_without_params.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile.dart';
import 'package:ibiapabaapp/features/profiles/domain/repositories/profiles_repository.dart';

class GetAccountProfiles implements UsecaseWithoutParams<List<Profile>> {
  final ProfilesRepository repository;

  GetAccountProfiles({required this.repository});

  @override
  Future<Either<AppFailure, List<Profile>>> call() {
    return repository.getAccountProfiles();
  }
}
