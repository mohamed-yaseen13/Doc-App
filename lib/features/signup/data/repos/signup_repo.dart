import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/signup/data/apis/signup_api_service.dart';
import 'package:doc_app/features/signup/data/models/signup_request_body.dart';
import 'package:doc_app/features/signup/data/models/signup_response_body.dart';

class SignupRepo {
  final SignupApiService _signupApiService;

  SignupRepo(this._signupApiService);

  Future<ApiResult<SignupResponseBody>> signup(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _signupApiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
