import 'package:doc_app/core/routing/app_routes.dart';
import 'package:doc_app/features/login/login_screen.dart';
import 'package:doc_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case AppRoutes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case AppRoutes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No Route Defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
