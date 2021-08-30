import 'package:flutter/material.dart';
import 'package:monumental/presentation/screens/home/sc_home.dart';
import 'package:monumental/presentation/screens/onboarding/sc_onboarding.dart';
import 'package:monumental/presentation/screens/splash/sc_splash.dart';

class AppRouter {
  static const SPLASH = '/splash';
  static const ONBOARDING = '/onboarding';
  static const HOME = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case ONBOARDING:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
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
