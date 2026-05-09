// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthResultModel _$AuthResultModelFromJson(Map<String, dynamic> json) =>
    _AuthResultModel(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      account: AccountModel.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResultModelToJson(_AuthResultModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'account': instance.account,
    };
