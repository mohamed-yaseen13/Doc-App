import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/apis/doctors_api_service.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/models/doctors_response_model.dart';

class DoctorsRepo {
  final DoctorsApiService _doctorsApiService;

  DoctorsRepo(this._doctorsApiService);

  static const String AUTH_TOKEN =
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzQ2MzQ3MzYyLCJleHAiOjE3NDY0MzM3NjIsIm5iZiI6MTc0NjM0NzM2MiwianRpIjoiVXRKUnhDTmFrZVNYelNDTyIsInN1YiI6IjM3MDUiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.IvfBZW6Tq_t13V0zzc0cahXdwJ0koL6Rd8dwm9HMLoU';

  Future<ApiResult<DoctorsResponseModel>> getAllDoctors() async {
    try {
      final response = await _doctorsApiService.getAllDoctors(AUTH_TOKEN);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
