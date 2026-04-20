// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_interests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileInterestsModel _$ProfileInterestsModelFromJson(
  Map<String, dynamic> json,
) => _ProfileInterestsModel(
  businesses:
      (json['businesses_interests'] as List<dynamic>?)
          ?.map((e) => InterestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  events:
      (json['events_interests'] as List<dynamic>?)
          ?.map((e) => InterestModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ProfileInterestsModelToJson(
  _ProfileInterestsModel instance,
) => <String, dynamic>{
  'businesses_interests': instance.businesses,
  'events_interests': instance.events,
};
