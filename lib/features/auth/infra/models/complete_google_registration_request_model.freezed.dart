// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_google_registration_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteGoogleRegistrationRequestModel {

@JsonKey(name: 'temp_token') String get tempToken; String get slug; String get type; String? get gender;
/// Create a copy of CompleteGoogleRegistrationRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteGoogleRegistrationRequestModelCopyWith<CompleteGoogleRegistrationRequestModel> get copyWith => _$CompleteGoogleRegistrationRequestModelCopyWithImpl<CompleteGoogleRegistrationRequestModel>(this as CompleteGoogleRegistrationRequestModel, _$identity);

  /// Serializes this CompleteGoogleRegistrationRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteGoogleRegistrationRequestModel&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempToken,slug,type,gender);

@override
String toString() {
  return 'CompleteGoogleRegistrationRequestModel(tempToken: $tempToken, slug: $slug, type: $type, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $CompleteGoogleRegistrationRequestModelCopyWith<$Res>  {
  factory $CompleteGoogleRegistrationRequestModelCopyWith(CompleteGoogleRegistrationRequestModel value, $Res Function(CompleteGoogleRegistrationRequestModel) _then) = _$CompleteGoogleRegistrationRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'temp_token') String tempToken, String slug, String type, String? gender
});




}
/// @nodoc
class _$CompleteGoogleRegistrationRequestModelCopyWithImpl<$Res>
    implements $CompleteGoogleRegistrationRequestModelCopyWith<$Res> {
  _$CompleteGoogleRegistrationRequestModelCopyWithImpl(this._self, this._then);

  final CompleteGoogleRegistrationRequestModel _self;
  final $Res Function(CompleteGoogleRegistrationRequestModel) _then;

/// Create a copy of CompleteGoogleRegistrationRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tempToken = null,Object? slug = null,Object? type = null,Object? gender = freezed,}) {
  return _then(_self.copyWith(
tempToken: null == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteGoogleRegistrationRequestModel].
extension CompleteGoogleRegistrationRequestModelPatterns on CompleteGoogleRegistrationRequestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteGoogleRegistrationRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationRequestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteGoogleRegistrationRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteGoogleRegistrationRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationRequestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'temp_token')  String tempToken,  String slug,  String type,  String? gender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationRequestModel() when $default != null:
return $default(_that.tempToken,_that.slug,_that.type,_that.gender);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'temp_token')  String tempToken,  String slug,  String type,  String? gender)  $default,) {final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationRequestModel():
return $default(_that.tempToken,_that.slug,_that.type,_that.gender);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'temp_token')  String tempToken,  String slug,  String type,  String? gender)?  $default,) {final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationRequestModel() when $default != null:
return $default(_that.tempToken,_that.slug,_that.type,_that.gender);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteGoogleRegistrationRequestModel extends CompleteGoogleRegistrationRequestModel {
  const _CompleteGoogleRegistrationRequestModel({@JsonKey(name: 'temp_token') required this.tempToken, required this.slug, required this.type, this.gender}): super._();
  factory _CompleteGoogleRegistrationRequestModel.fromJson(Map<String, dynamic> json) => _$CompleteGoogleRegistrationRequestModelFromJson(json);

@override@JsonKey(name: 'temp_token') final  String tempToken;
@override final  String slug;
@override final  String type;
@override final  String? gender;

/// Create a copy of CompleteGoogleRegistrationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteGoogleRegistrationRequestModelCopyWith<_CompleteGoogleRegistrationRequestModel> get copyWith => __$CompleteGoogleRegistrationRequestModelCopyWithImpl<_CompleteGoogleRegistrationRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteGoogleRegistrationRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteGoogleRegistrationRequestModel&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tempToken,slug,type,gender);

@override
String toString() {
  return 'CompleteGoogleRegistrationRequestModel(tempToken: $tempToken, slug: $slug, type: $type, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$CompleteGoogleRegistrationRequestModelCopyWith<$Res> implements $CompleteGoogleRegistrationRequestModelCopyWith<$Res> {
  factory _$CompleteGoogleRegistrationRequestModelCopyWith(_CompleteGoogleRegistrationRequestModel value, $Res Function(_CompleteGoogleRegistrationRequestModel) _then) = __$CompleteGoogleRegistrationRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'temp_token') String tempToken, String slug, String type, String? gender
});




}
/// @nodoc
class __$CompleteGoogleRegistrationRequestModelCopyWithImpl<$Res>
    implements _$CompleteGoogleRegistrationRequestModelCopyWith<$Res> {
  __$CompleteGoogleRegistrationRequestModelCopyWithImpl(this._self, this._then);

  final _CompleteGoogleRegistrationRequestModel _self;
  final $Res Function(_CompleteGoogleRegistrationRequestModel) _then;

/// Create a copy of CompleteGoogleRegistrationRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tempToken = null,Object? slug = null,Object? type = null,Object? gender = freezed,}) {
  return _then(_CompleteGoogleRegistrationRequestModel(
tempToken: null == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
