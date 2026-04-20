import 'package:dartz/dartz.dart';
import 'package:ibiapabaapp/core/errors/failures/failures.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests_response.dart';

abstract class ProfilesRepository {
  Future<Either<AppFailure, List<Profile>>> getAccountProfiles();
  Future<Either<AppFailure, ProfileInterests>> getProfileInterests(
    String profileId,
  );
  Future<Either<AppFailure, ProfileInterestsResponse>> updateProfileInterests({
    required String profileId,
    required ProfileInterests interests,
  });
}
