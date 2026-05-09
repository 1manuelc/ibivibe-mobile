// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_google_registration_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompleteGoogleRegistrationResponseModel {

@JsonKey(name: 'access_token') String get accessToken;@JsonKey(name: 'refresh_token') String get refreshToken; AccountModel get account;
/// Create a copy of CompleteGoogleRegistrationResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteGoogleRegistrationResponseModelCopyWith<CompleteGoogleRegistrationResponseModel> get copyWith => _$CompleteGoogleRegistrationResponseModelCopyWithImpl<CompleteGoogleRegistrationResponseModel>(this as CompleteGoogleRegistrationResponseModel, _$identity);

  /// Serializes this CompleteGoogleRegistrationResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteGoogleRegistrationResponseModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,account);

@override
String toString() {
  return 'CompleteGoogleRegistrationResponseModel(accessToken: $accessToken, refreshToken: $refreshToken, account: $account)';
}


}

/// @nodoc
abstract mixin class $CompleteGoogleRegistrationResponseModelCopyWith<$Res>  {
  factory $CompleteGoogleRegistrationResponseModelCopyWith(CompleteGoogleRegistrationResponseModel value, $Res Function(CompleteGoogleRegistrationResponseModel) _then) = _$CompleteGoogleRegistrationResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'refresh_token') String refreshToken, AccountModel account
});


$AccountModelCopyWith<$Res> get account;

}
/// @nodoc
class _$CompleteGoogleRegistrationResponseModelCopyWithImpl<$Res>
    implements $CompleteGoogleRegistrationResponseModelCopyWith<$Res> {
  _$CompleteGoogleRegistrationResponseModelCopyWithImpl(this._self, this._then);

  final CompleteGoogleRegistrationResponseModel _self;
  final $Res Function(CompleteGoogleRegistrationResponseModel) _then;

/// Create a copy of CompleteGoogleRegistrationResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? account = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountModel,
  ));
}
/// Create a copy of CompleteGoogleRegistrationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountModelCopyWith<$Res> get account {
  
  return $AccountModelCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompleteGoogleRegistrationResponseModel].
extension CompleteGoogleRegistrationResponseModelPatterns on CompleteGoogleRegistrationResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteGoogleRegistrationResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteGoogleRegistrationResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteGoogleRegistrationResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken,  AccountModel account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationResponseModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken,  AccountModel account)  $default,) {final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationResponseModel():
return $default(_that.accessToken,_that.refreshToken,_that.account);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken,  AccountModel account)?  $default,) {final _that = this;
switch (_that) {
case _CompleteGoogleRegistrationResponseModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteGoogleRegistrationResponseModel extends CompleteGoogleRegistrationResponseModel {
  const _CompleteGoogleRegistrationResponseModel({@JsonKey(name: 'access_token') required this.accessToken, @JsonKey(name: 'refresh_token') required this.refreshToken, required this.account}): super._();
  factory _CompleteGoogleRegistrationResponseModel.fromJson(Map<String, dynamic> json) => _$CompleteGoogleRegistrationResponseModelFromJson(json);

@override@JsonKey(name: 'access_token') final  String accessToken;
@override@JsonKey(name: 'refresh_token') final  String refreshToken;
@override final  AccountModel account;

/// Create a copy of CompleteGoogleRegistrationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteGoogleRegistrationResponseModelCopyWith<_CompleteGoogleRegistrationResponseModel> get copyWith => __$CompleteGoogleRegistrationResponseModelCopyWithImpl<_CompleteGoogleRegistrationResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteGoogleRegistrationResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteGoogleRegistrationResponseModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.account, account) || other.account == account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,account);

@override
String toString() {
  return 'CompleteGoogleRegistrationResponseModel(accessToken: $accessToken, refreshToken: $refreshToken, account: $account)';
}


}

/// @nodoc
abstract mixin class _$CompleteGoogleRegistrationResponseModelCopyWith<$Res> implements $CompleteGoogleRegistrationResponseModelCopyWith<$Res> {
  factory _$CompleteGoogleRegistrationResponseModelCopyWith(_CompleteGoogleRegistrationResponseModel value, $Res Function(_CompleteGoogleRegistrationResponseModel) _then) = __$CompleteGoogleRegistrationResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'refresh_token') String refreshToken, AccountModel account
});


@override $AccountModelCopyWith<$Res> get account;

}
/// @nodoc
class __$CompleteGoogleRegistrationResponseModelCopyWithImpl<$Res>
    implements _$CompleteGoogleRegistrationResponseModelCopyWith<$Res> {
  __$CompleteGoogleRegistrationResponseModelCopyWithImpl(this._self, this._then);

  final _CompleteGoogleRegistrationResponseModel _self;
  final $Res Function(_CompleteGoogleRegistrationResponseModel) _then;

/// Create a copy of CompleteGoogleRegistrationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? account = null,}) {
  return _then(_CompleteGoogleRegistrationResponseModel(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountModel,
  ));
}

/// Create a copy of CompleteGoogleRegistrationResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountModelCopyWith<$Res> get account {
  
  return $AccountModelCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
