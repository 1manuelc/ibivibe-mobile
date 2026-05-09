// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_google_registration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteGoogleRegistrationResponseModel
_$CompleteGoogleRegistrationResponseModelFromJson(Map<String, dynamic> json) =>
    _CompleteGoogleRegistrationResponseModel(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      account: AccountModel.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompleteGoogleRegistrationResponseModelToJson(
  _CompleteGoogleRegistrationResponseModel instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'account': instance.account,
};
