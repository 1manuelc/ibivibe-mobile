import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/usecases/usecase.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests.dart';
import 'package:ibiapabaapp/features/profiles/domain/repositories/profiles_repository.dart';

class GetProfileInterests implements Usecase<ProfileInterests, GetProfileInterestsParams> {
  final ProfilesRepository repository;
  GetProfileInterests({required this.repository});

  @override
  Future<Either<AppFailure, ProfileInterests>> call(GetProfileInterestsParams params) async {
    return await repository.getProfileInterests(params.profileId);
  }
}

class GetProfileInterestsParams {
  final String profileId;
  GetProfileInterestsParams({required this.profileId});
}
