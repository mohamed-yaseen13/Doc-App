import 'package:dio/dio.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doc_app/core/networking/api_constants.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);
}
