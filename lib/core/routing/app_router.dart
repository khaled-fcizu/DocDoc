import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/login/ui/login_screen.dart';
import 'package:docdoc/features/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return null;
    }
  }
}
