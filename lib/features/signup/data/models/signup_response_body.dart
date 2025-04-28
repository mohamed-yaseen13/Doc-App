import 'package:json_annotation/json_annotation.dart';

part 'signup_response_body.g.dart';

@JsonSerializable()
class SignupResponseBody {
  String message;

  @JsonKey(name: 'data')
  SignupData? signupData;

  bool status;
  int code;

  SignupResponseBody({
    required this.code,
    required this.message,
    required this.status,
    this.signupData,
  });

  factory SignupResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseBodyFromJson(json);
}

@JsonSerializable()
class SignupData {
  String? token;

  @JsonKey(name: 'username')
  String? userName;

  SignupData({this.token, this.userName});

  factory SignupData.fromJson(Map<String, dynamic> json) =>
      _$SignupDataFromJson(json);
}
