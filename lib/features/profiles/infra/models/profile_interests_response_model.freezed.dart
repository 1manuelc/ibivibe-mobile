// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_interests_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileInterestsResponseModel {

 int get count;
/// Create a copy of ProfileInterestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileInterestsResponseModelCopyWith<ProfileInterestsResponseModel> get copyWith => _$ProfileInterestsResponseModelCopyWithImpl<ProfileInterestsResponseModel>(this as ProfileInterestsResponseModel, _$identity);

  /// Serializes this ProfileInterestsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInterestsResponseModel&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'ProfileInterestsResponseModel(count: $count)';
}


}

/// @nodoc
abstract mixin class $ProfileInterestsResponseModelCopyWith<$Res>  {
  factory $ProfileInterestsResponseModelCopyWith(ProfileInterestsResponseModel value, $Res Function(ProfileInterestsResponseModel) _then) = _$ProfileInterestsResponseModelCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class _$ProfileInterestsResponseModelCopyWithImpl<$Res>
    implements $ProfileInterestsResponseModelCopyWith<$Res> {
  _$ProfileInterestsResponseModelCopyWithImpl(this._self, this._then);

  final ProfileInterestsResponseModel _self;
  final $Res Function(ProfileInterestsResponseModel) _then;

/// Create a copy of ProfileInterestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileInterestsResponseModel].
extension ProfileInterestsResponseModelPatterns on ProfileInterestsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileInterestsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileInterestsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileInterestsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileInterestsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileInterestsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileInterestsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileInterestsResponseModel() when $default != null:
return $default(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count)  $default,) {final _that = this;
switch (_that) {
case _ProfileInterestsResponseModel():
return $default(_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count)?  $default,) {final _that = this;
switch (_that) {
case _ProfileInterestsResponseModel() when $default != null:
return $default(_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileInterestsResponseModel extends ProfileInterestsResponseModel {
  const _ProfileInterestsResponseModel({required this.count}): super._();
  factory _ProfileInterestsResponseModel.fromJson(Map<String, dynamic> json) => _$ProfileInterestsResponseModelFromJson(json);

@override final  int count;

/// Create a copy of ProfileInterestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileInterestsResponseModelCopyWith<_ProfileInterestsResponseModel> get copyWith => __$ProfileInterestsResponseModelCopyWithImpl<_ProfileInterestsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileInterestsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileInterestsResponseModel&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'ProfileInterestsResponseModel(count: $count)';
}


}

/// @nodoc
abstract mixin class _$ProfileInterestsResponseModelCopyWith<$Res> implements $ProfileInterestsResponseModelCopyWith<$Res> {
  factory _$ProfileInterestsResponseModelCopyWith(_ProfileInterestsResponseModel value, $Res Function(_ProfileInterestsResponseModel) _then) = __$ProfileInterestsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int count
});




}
/// @nodoc
class __$ProfileInterestsResponseModelCopyWithImpl<$Res>
    implements _$ProfileInterestsResponseModelCopyWith<$Res> {
  __$ProfileInterestsResponseModelCopyWithImpl(this._self, this._then);

  final _ProfileInterestsResponseModel _self;
  final $Res Function(_ProfileInterestsResponseModel) _then;

/// Create a copy of ProfileInterestsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_ProfileInterestsResponseModel(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
