import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/apis/specializations_api_service.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/models/specializations_response_model.dart';

class SpecializationsRepo {
  final SpecializationsApiService _specializationsApiService;

  SpecializationsRepo(this._specializationsApiService);

  Future<ApiResult<SpecializationsResponseModel>>
  getAllSpecializations() async {
    try {
      final response = await _specializationsApiService.getAllSpecializations();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
