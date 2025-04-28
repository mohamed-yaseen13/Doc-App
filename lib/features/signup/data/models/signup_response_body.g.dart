// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponseBody _$SignupResponseBodyFromJson(Map<String, dynamic> json) =>
    SignupResponseBody(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      status: json['status'] as bool,
      signupData:
          json['data'] == null
              ? null
              : SignupData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseBodyToJson(SignupResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.signupData,
      'status': instance.status,
      'code': instance.code,
    };

SignupData _$SignupDataFromJson(Map<String, dynamic> json) => SignupData(
  token: json['token'] as String?,
  userName: json['username'] as String?,
);

Map<String, dynamic> _$SignupDataToJson(SignupData instance) =>
    <String, dynamic>{'token': instance.token, 'username': instance.userName};
