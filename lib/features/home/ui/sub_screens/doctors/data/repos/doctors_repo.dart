import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/apis/doctors_api_service.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/models/doctors_response_model.dart';

class DoctorsRepo {
  final DoctorsApiService _doctorsApiService;

  DoctorsRepo(this._doctorsApiService);

  Future<ApiResult<DoctorsResponseModel>> getAllDoctors() async {
    try {
      final response = await _doctorsApiService.getAllDoctors();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
