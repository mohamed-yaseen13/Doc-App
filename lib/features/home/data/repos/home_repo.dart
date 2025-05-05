import 'package:doc_app/core/networking/api_result.dart';
import 'package:doc_app/features/home/data/apis/home_api_service.dart';
import 'package:doc_app/features/home/data/models/home_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<HomeResponseModel>> home() async {
    try {
      final response = await _homeApiService.home();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
