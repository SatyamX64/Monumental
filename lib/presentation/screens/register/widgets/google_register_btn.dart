import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/widget_social_btn.dart';
import 'package:sizer/sizer.dart';

class GoogleRegisterBtn extends StatelessWidget {
  const GoogleRegisterBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SocialLoginBtn(
      image: Assets.images.icons.google.image(),
      text: 'Google',
      onPressed: () {},
      imagePadding: 10.sp,
    );
  }
}
