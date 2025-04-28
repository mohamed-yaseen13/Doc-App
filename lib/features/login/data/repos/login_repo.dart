import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/login/data/apis/login_api_service.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/data/models/login_response_body.dart';

class LoginRepo {
  final LoginApiService _loginApiService;

  LoginRepo(this._loginApiService);

  Future<ApiResult<LoginResponseBody>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _loginApiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
