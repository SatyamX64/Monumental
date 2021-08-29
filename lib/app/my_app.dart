import 'package:flutter/material.dart';
import 'package:monumental/app/app_config.dart';
import 'package:monumental/app/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appConfig = AppConfig.of(context);
    return MaterialApp(
      title: appConfig.name,
      initialRoute: appConfig.initialRoute,
      onGenerateRoute: AppRouter.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }

  static Future<void> initGlobalConfigs() async {
    // add here : config that runs before runApp()
    // eg : Firebase Initialization, SystemChrome config, etc
  }

  static Widget run() {
    // add here :  config that runs before materialApp
    // eg : repository providers etc.
    return const MyApp();
  }
}
