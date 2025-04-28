import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_constants.dart';
import 'package:doc_app/features/signup/data/models/signup_request_body.dart';
import 'package:doc_app/features/signup/data/models/signup_response_body.dart';
import 'package:retrofit/retrofit.dart';

part 'signup_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SignupApiService {
  factory SignupApiService(Dio dio, {String baseUrl}) = _SignupApiService;

  @POST(ApiConstants.signup)
  Future<SignupResponseBody> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
