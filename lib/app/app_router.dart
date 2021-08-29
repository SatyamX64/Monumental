import 'package:flutter/material.dart';
import 'package:monumental/presentation/screens/splash/sc_splash.dart';

class AppRouter {
  static const SPLASH = '/splash';
  
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
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
