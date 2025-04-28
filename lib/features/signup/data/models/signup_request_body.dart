import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final int phone;
  final int gender;
  final String password;

  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignupRequestBody({
    required this.email,
    required this.gender,
    required this.name,
    required this.password,
    required this.passwordConfirmation,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
