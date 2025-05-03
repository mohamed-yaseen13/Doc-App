import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/api_constants.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/models/doctors_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'doctors_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class DoctorsApiService {
  factory DoctorsApiService(Dio dio, {String baseUrl}) = _DoctorsApiService;

  @GET(ApiConstants.allDoctors)
  Future<DoctorsResponseModel> getAllDoctors(
    @Header('Authorization') String AUTH_TOKEN,
  );
}
