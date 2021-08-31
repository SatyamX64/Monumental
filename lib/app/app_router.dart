import 'package:flutter/material.dart';
import 'package:monumental/presentation/screens/home/sc_home.dart';
import 'package:monumental/presentation/screens/login/sc_login.dart';
import 'package:monumental/presentation/screens/onboarding/sc_onboarding.dart';
import 'package:monumental/presentation/screens/register/sc_register.dart';
import 'package:monumental/presentation/screens/splash/sc_splash.dart';

class AppRouter {
  static const SPLASH = '/splash';
  static const ONBOARDING = '/onboarding';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const HOME = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case ONBOARDING:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case REGISTER:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case HOME:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
