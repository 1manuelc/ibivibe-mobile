import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibiapabaapp/features/accounts/infra/models/account_model.dart';
import '../../domain/entities/complete_google_registration.dart';

part 'complete_google_registration_response_model.freezed.dart';
part 'complete_google_registration_response_model.g.dart';

@freezed
abstract class CompleteGoogleRegistrationResponseModel
    with _$CompleteGoogleRegistrationResponseModel {
  const CompleteGoogleRegistrationResponseModel._();

  const factory CompleteGoogleRegistrationResponseModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    required AccountModel account,
  }) = _CompleteGoogleRegistrationResponseModel;

  factory CompleteGoogleRegistrationResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$CompleteGoogleRegistrationResponseModelFromJson(json);

  CompleteGoogleRegistrationResponse toEntity() {
    return CompleteGoogleRegistrationResponse(
      accessToken: accessToken,
      refreshToken: refreshToken,
      account: account,
    );
  }
}
