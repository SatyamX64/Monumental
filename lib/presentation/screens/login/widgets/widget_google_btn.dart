import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/utils/my_const/font_const.dart';

class GoogleLoginBtn extends StatelessWidget {
  const GoogleLoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SocialLoginBtn(
        image: Assets.images.icons.google.image(height: 23, width: 23),
        text: 'Continue with Google',
        onPressed: () {},
      ),
    );
  }
}
