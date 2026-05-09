// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_auth_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleAuthResultModel {

@JsonKey(name: 'is_new_user') bool get isNewUser;@JsonKey(name: 'temp_token', defaultValue: null) String? get tempToken;@JsonKey(name: 'avatar_url') String? get avatarUrl; AccountModel? get account;@JsonKey(name: 'access_token') String? get accessToken;@JsonKey(name: 'refresh_token') String? get refreshToken;
/// Create a copy of GoogleAuthResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleAuthResultModelCopyWith<GoogleAuthResultModel> get copyWith => _$GoogleAuthResultModelCopyWithImpl<GoogleAuthResultModel>(this as GoogleAuthResultModel, _$identity);

  /// Serializes this GoogleAuthResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleAuthResultModel&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.account, account) || other.account == account)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isNewUser,tempToken,avatarUrl,account,accessToken,refreshToken);

@override
String toString() {
  return 'GoogleAuthResultModel(isNewUser: $isNewUser, tempToken: $tempToken, avatarUrl: $avatarUrl, account: $account, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class $GoogleAuthResultModelCopyWith<$Res>  {
  factory $GoogleAuthResultModelCopyWith(GoogleAuthResultModel value, $Res Function(GoogleAuthResultModel) _then) = _$GoogleAuthResultModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_new_user') bool isNewUser,@JsonKey(name: 'temp_token', defaultValue: null) String? tempToken,@JsonKey(name: 'avatar_url') String? avatarUrl, AccountModel? account,@JsonKey(name: 'access_token') String? accessToken,@JsonKey(name: 'refresh_token') String? refreshToken
});


$AccountModelCopyWith<$Res>? get account;

}
/// @nodoc
class _$GoogleAuthResultModelCopyWithImpl<$Res>
    implements $GoogleAuthResultModelCopyWith<$Res> {
  _$GoogleAuthResultModelCopyWithImpl(this._self, this._then);

  final GoogleAuthResultModel _self;
  final $Res Function(GoogleAuthResultModel) _then;

/// Create a copy of GoogleAuthResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isNewUser = null,Object? tempToken = freezed,Object? avatarUrl = freezed,Object? account = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,}) {
  return _then(_self.copyWith(
isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountModel?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GoogleAuthResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountModelCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $AccountModelCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoogleAuthResultModel].
extension GoogleAuthResultModelPatterns on GoogleAuthResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleAuthResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleAuthResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleAuthResultModel value)  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleAuthResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_new_user')  bool isNewUser, @JsonKey(name: 'temp_token', defaultValue: null)  String? tempToken, @JsonKey(name: 'avatar_url')  String? avatarUrl,  AccountModel? account, @JsonKey(name: 'access_token')  String? accessToken, @JsonKey(name: 'refresh_token')  String? refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleAuthResultModel() when $default != null:
return $default(_that.isNewUser,_that.tempToken,_that.avatarUrl,_that.account,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_new_user')  bool isNewUser, @JsonKey(name: 'temp_token', defaultValue: null)  String? tempToken, @JsonKey(name: 'avatar_url')  String? avatarUrl,  AccountModel? account, @JsonKey(name: 'access_token')  String? accessToken, @JsonKey(name: 'refresh_token')  String? refreshToken)  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthResultModel():
return $default(_that.isNewUser,_that.tempToken,_that.avatarUrl,_that.account,_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_new_user')  bool isNewUser, @JsonKey(name: 'temp_token', defaultValue: null)  String? tempToken, @JsonKey(name: 'avatar_url')  String? avatarUrl,  AccountModel? account, @JsonKey(name: 'access_token')  String? accessToken, @JsonKey(name: 'refresh_token')  String? refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthResultModel() when $default != null:
return $default(_that.isNewUser,_that.tempToken,_that.avatarUrl,_that.account,_that.accessToken,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleAuthResultModel extends GoogleAuthResultModel {
  const _GoogleAuthResultModel({@JsonKey(name: 'is_new_user') required this.isNewUser, @JsonKey(name: 'temp_token', defaultValue: null) this.tempToken, @JsonKey(name: 'avatar_url') this.avatarUrl, this.account, @JsonKey(name: 'access_token') this.accessToken, @JsonKey(name: 'refresh_token') this.refreshToken}): super._();
  factory _GoogleAuthResultModel.fromJson(Map<String, dynamic> json) => _$GoogleAuthResultModelFromJson(json);

@override@JsonKey(name: 'is_new_user') final  bool isNewUser;
@override@JsonKey(name: 'temp_token', defaultValue: null) final  String? tempToken;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override final  AccountModel? account;
@override@JsonKey(name: 'access_token') final  String? accessToken;
@override@JsonKey(name: 'refresh_token') final  String? refreshToken;

/// Create a copy of GoogleAuthResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleAuthResultModelCopyWith<_GoogleAuthResultModel> get copyWith => __$GoogleAuthResultModelCopyWithImpl<_GoogleAuthResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleAuthResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleAuthResultModel&&(identical(other.isNewUser, isNewUser) || other.isNewUser == isNewUser)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.account, account) || other.account == account)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isNewUser,tempToken,avatarUrl,account,accessToken,refreshToken);

@override
String toString() {
  return 'GoogleAuthResultModel(isNewUser: $isNewUser, tempToken: $tempToken, avatarUrl: $avatarUrl, account: $account, accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$GoogleAuthResultModelCopyWith<$Res> implements $GoogleAuthResultModelCopyWith<$Res> {
  factory _$GoogleAuthResultModelCopyWith(_GoogleAuthResultModel value, $Res Function(_GoogleAuthResultModel) _then) = __$GoogleAuthResultModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_new_user') bool isNewUser,@JsonKey(name: 'temp_token', defaultValue: null) String? tempToken,@JsonKey(name: 'avatar_url') String? avatarUrl, AccountModel? account,@JsonKey(name: 'access_token') String? accessToken,@JsonKey(name: 'refresh_token') String? refreshToken
});


@override $AccountModelCopyWith<$Res>? get account;

}
/// @nodoc
class __$GoogleAuthResultModelCopyWithImpl<$Res>
    implements _$GoogleAuthResultModelCopyWith<$Res> {
  __$GoogleAuthResultModelCopyWithImpl(this._self, this._then);

  final _GoogleAuthResultModel _self;
  final $Res Function(_GoogleAuthResultModel) _then;

/// Create a copy of GoogleAuthResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isNewUser = null,Object? tempToken = freezed,Object? avatarUrl = freezed,Object? account = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,}) {
  return _then(_GoogleAuthResultModel(
isNewUser: null == isNewUser ? _self.isNewUser : isNewUser // ignore: cast_nullable_to_non_nullable
as bool,tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as AccountModel?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GoogleAuthResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountModelCopyWith<$Res>? get account {
    if (_self.account == null) {
    return null;
  }

  return $AccountModelCopyWith<$Res>(_self.account!, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}

// dart format on
