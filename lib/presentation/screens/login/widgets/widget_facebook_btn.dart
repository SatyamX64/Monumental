import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';

class FacebookLoginBtn extends StatelessWidget {
  const FacebookLoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SocialLoginBtn(
        image: Assets.images.icons.facebook.image(height: 23, width: 23),
        text: 'Continue with Facebook',
        onPressed: () {},
      ),
    );
  }
}
