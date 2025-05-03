import 'package:doc_app/core/dependency_injection/di.dart';
import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/logic/cubit/doctors_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/doctors/ui/doctors_screen.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/logic/cubit/specializations_cubit.dart';
import 'package:doc_app/features/home/ui/sub_screens/specializations/ui/specializations_screen.dart';
import 'package:doc_app/features/home/ui/home_screen.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/login/ui/login_screen.dart';
import 'package:doc_app/features/onboarding/onboarding_screen.dart';
import 'package:doc_app/features/signup/logic/cubit/signup_cubit.dart';
import 'package:doc_app/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case AppRoutes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );

      case AppRoutes.signupScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );

      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<HomeCubit>()..emitHomeStates(),
                child: const HomeScreen(),
              ),
        );

      case AppRoutes.specializations:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create:
                    (context) =>
                        getIt<SpecializationsCubit>()
                          ..emitSpecializationsStates(),
                child: const SpecializationsScreen(),
              ),
        );

      case AppRoutes.doctors:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<DoctorsCubit>()..emitDoctorsStates(),
                child: const DoctorsScreen(),
              ),
        );

      default:
        return null;
    }
  }
}
