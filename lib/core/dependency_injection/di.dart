import 'package:dio/dio.dart';
import 'package:doc_app/core/networking/dio_factory.dart';
import 'package:doc_app/features/home/data/apis/home_api_service.dart';
import 'package:doc_app/features/home/data/repos/home_repo.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/apis/doctors_api_service.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/data/repos/doctors_repo.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/logic/cubit/doctors_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/apis/specializations_api_service.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/data/repos/specializations_repo.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/logic/cubit/specializations_cubit.dart';
import 'package:doc_app/features/login/data/apis/login_api_service.dart';
import 'package:doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/signup/data/apis/signup_api_service.dart';
import 'package:doc_app/features/signup/data/repos/signup_repo.dart';
import 'package:doc_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<SignupApiService>(() => SignupApiService(dio));
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  getIt.registerLazySingleton<SpecializationsApiService>(
    () => SpecializationsApiService(dio),
  );
  getIt.registerLazySingleton<SpecializationsRepo>(
    () => SpecializationsRepo(getIt()),
  );
  getIt.registerFactory<SpecializationsCubit>(
    () => SpecializationsCubit(getIt()),
  );

  getIt.registerLazySingleton<DoctorsApiService>(() => DoctorsApiService(dio));
  getIt.registerLazySingleton<DoctorsRepo>(() => DoctorsRepo(getIt()));
  getIt.registerFactory<DoctorsCubit>(() => DoctorsCubit(getIt()));
}
