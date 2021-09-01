import 'package:flutter/material.dart';
import 'package:monumental/app/my_app.dart';
import 'package:monumental/app/app_config.dart';

import 'app/app_router.dart';

Future<void> main() async {
  await MyApp.initGlobalConfigs();
  runApp(
    AppConfig(
      name: 'Monumental',
      initialRoute: AppRouter.SPLASH,
      flavour: Flavour.developement,
      child: MyApp.run(),
    ),
  );
}
