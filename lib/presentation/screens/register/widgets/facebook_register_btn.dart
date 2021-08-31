import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/widget_social_btn.dart';
import 'package:sizer/sizer.dart';

class FacebookRegisterBtn extends StatelessWidget {
  const FacebookRegisterBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SocialLoginBtn(
      image: Assets.images.icons.facebook.image(),
      text: 'Facebook',
      onPressed: () {},
      imagePadding: 10.sp,
    );
  }
}
