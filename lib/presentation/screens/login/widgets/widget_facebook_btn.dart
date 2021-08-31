import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:sizer/sizer.dart';

class FacebookLoginBtn extends StatelessWidget {
  const FacebookLoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: SocialLoginBtn(
        image: Assets.images.icons.facebook.image(),
        text: 'Continue with Facebook',
        onPressed: () {},
      ),
    );
  }
}
