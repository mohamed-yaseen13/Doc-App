import 'package:json_annotation/json_annotation.dart';

part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  String message;

  @JsonKey(name: 'data')
  LoginData? loginData;

  bool status;
  int code;

  LoginResponseBody({
    required this.code,
    required this.message,
    required this.status,
    this.loginData,
  });

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class LoginData {
  String? token;

  @JsonKey(name: 'username')
  String? userName;

  LoginData({this.token, this.userName});

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
