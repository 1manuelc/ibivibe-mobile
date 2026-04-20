import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibiapabaapp/features/profiles/domain/entities/profile_interests_response.dart';

part 'profile_interests_response_model.freezed.dart';
part 'profile_interests_response_model.g.dart';

@freezed
abstract class ProfileInterestsResponseModel
    with _$ProfileInterestsResponseModel
    implements ProfileInterestsResponse {
  const ProfileInterestsResponseModel._();

  const factory ProfileInterestsResponseModel({required int count}) =
      _ProfileInterestsResponseModel;

  factory ProfileInterestsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileInterestsResponseModelFromJson(json);

  static Map<String, dynamic> toMap(
    ProfileInterestsResponse profileInterestsResponse,
  ) => {'count': profileInterestsResponse.count};
}
