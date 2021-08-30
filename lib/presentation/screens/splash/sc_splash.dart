import 'package:flutter/material.dart';
import 'package:monumental/app/app_router.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/utils/my_const/font_const.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(AppRouter.ONBOARDING);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Assets.images.splashBg.image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Text(
                'Welcome to monumental habits',
                style: FONT_CONST.TITLE_BOLD_40,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
