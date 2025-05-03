import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/apis/specializations_api_service.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/models/specializations_response_model.dart';

class SpecializationsRepo {
  final SpecializationsApiService _specializationsApiService;

  SpecializationsRepo(this._specializationsApiService);

  static const String AUTH_TOKEN =
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzQ2MjU1OTQwLCJleHAiOjE3NDYzNDIzNDAsIm5iZiI6MTc0NjI1NTk0MCwianRpIjoiWlNLMTdwODE5bGhWQTdGSSIsInN1YiI6IjM3MDUiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.QiTO5Hq7ZzG4LmaafTarpyEjydzeFnNDzpLJpz7DcTk';
  Future<ApiResult<SpecializationsResponseModel>>
  getAllSpecializations() async {
    try {
      final response = await _specializationsApiService.getAllSpecializations(
        AUTH_TOKEN,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
