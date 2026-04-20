import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/core/usecases/usecase.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests_response.dart';
import 'package:ibiapabaapp/features/profiles/domain/repositories/profiles_repository.dart';

class UpdateProfileInterests
    implements Usecase<void, UpdateProfileInterestsParams> {
  final ProfilesRepository repository;
  UpdateProfileInterests({required this.repository});

  @override
  Future<Either<AppFailure, ProfileInterestsResponse>> call(
    UpdateProfileInterestsParams params,
  ) async {
    return await repository.updateProfileInterests(
      profileId: params.profileId,
      interests: params.interests,
    );
  }
}

class UpdateProfileInterestsParams {
  final String profileId;
  final ProfileInterests interests;
  UpdateProfileInterestsParams({
    required this.profileId,
    required this.interests,
  });
}
