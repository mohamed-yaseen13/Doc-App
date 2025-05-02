import 'package:dio/dio.dart';
import 'package:doc_app/features/home/data/models/home_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doc_app/core/networking/api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  static const String AUTH_TOKEN =
      'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzQ2MTY4Njk5LCJleHAiOjE3NDYyNTUwOTksIm5iZiI6MTc0NjE2ODY5OSwianRpIjoiSno1cllwNzdFUlZseXJXbyIsInN1YiI6IjM3MDUiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.BsG-ZL3571f4x34zBk0tJWSDLRpgjKpJkaNb0X3PP6w';

  @GET(ApiConstants.home)
  Future<HomeResponseModel> home(@Header('Authorization') String AUTH_TOKEN);
}
