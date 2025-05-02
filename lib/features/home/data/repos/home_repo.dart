import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/data/apis/home_api_service.dart';
import 'package:doc_app/features/home/data/models/home_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  static const String AUTH_TOKEN =
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzQ2MTY4Njk5LCJleHAiOjE3NDYyNTUwOTksIm5iZiI6MTc0NjE2ODY5OSwianRpIjoiSno1cllwNzdFUlZseXJXbyIsInN1YiI6IjM3MDUiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.BsG-ZL3571f4x34zBk0tJWSDLRpgjKpJkaNb0X3PP6w';

  HomeRepo(this._homeApiService);

  Future<ApiResult<HomeResponseModel>> home() async {
    try {
      final response = await _homeApiService.home(AUTH_TOKEN);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
