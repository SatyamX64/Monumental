import 'package:flutter/material.dart';
import 'package:monumental/app/app_config.dart';
import 'package:monumental/app/app_router.dart';
import 'package:monumental/utils/my_const/color_const.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: COLOR_CONST.CREAM1,
      ),
    );
  }

  static Future<void> initGlobalConfigs() async {}

  static Widget run() {
    return const MyApp();
  }
}
