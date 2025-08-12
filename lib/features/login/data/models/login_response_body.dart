import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  final String? message;
  final bool? status;
  final int? code;
  @JsonKey(name: 'data')
  final UserData? useData;

  LoginResponseBody({
    required this.message,
    required this.status,
    required this.code,
    required this.useData,
  });
  factory LoginResponseBody.fromJson(json) => _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({required this.token, required this.userName});
  factory UserData.fromJson(json) => _$UserDataFromJson(json);
}
