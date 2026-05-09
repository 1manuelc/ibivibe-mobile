import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibiapabaapp/features/accounts/infra/models/account_model.dart';
import '../../domain/entities/google_auth_result.dart';

part 'google_auth_result_model.freezed.dart';
part 'google_auth_result_model.g.dart';

@freezed
abstract class GoogleAuthResultModel with _$GoogleAuthResultModel {
  const GoogleAuthResultModel._();

  const factory GoogleAuthResultModel({
    @JsonKey(name: 'is_new_user') required bool isNewUser,
    @JsonKey(name: 'temp_token', defaultValue: null) String? tempToken,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    AccountModel? account,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
  }) = _GoogleAuthResultModel;

  factory GoogleAuthResultModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthResultModelFromJson(json);

  GoogleAuthResult toEntity() {
    return GoogleAuthResult(
      isNewUser: isNewUser,
      tempToken: tempToken,
      account: account,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
