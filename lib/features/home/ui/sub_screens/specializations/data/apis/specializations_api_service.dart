import 'package:dio/dio.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/models/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doc_app/core/networking/api_constants.dart';

part 'specializations_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SpecializationsApiService {
  factory SpecializationsApiService(Dio dio, {String baseUrl}) =
      _SpecializationsApiService;

  @GET(ApiConstants.allSpecializations)
  Future<SpecializationsResponseModel> getAllSpecializations(
    @Header('Authorization') String AUTH_TOKEN,
  );
}
