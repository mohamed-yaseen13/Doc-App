import 'package:dio/dio.dart';
import 'package:doc_app/features/home/data/models/home_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doc_app/core/networking/api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(ApiConstants.home)
  Future<HomeResponseModel> home();
}
