// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponseBody _$SignUpResponseBodyFromJson(Map<String, dynamic> json) =>
    SignUpResponseBody(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
      useData: json['data'] == null ? null : UserData.fromJson(json['data']),
    );

Map<String, dynamic> _$SignUpResponseBodyToJson(SignUpResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
      'data': instance.useData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'token': instance.token,
  'username': instance.userName,
};
