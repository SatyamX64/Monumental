import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:sizer/sizer.dart';

class GoogleLoginBtn extends StatelessWidget {
  const GoogleLoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.sp),
      child: SocialLoginBtn(
        image: Assets.images.icons.google.image(),
        text: 'Continue with Google',
        onPressed: () {},
      ),
    );
  }
}
