import 'package:flutter/material.dart';
import 'package:monumental/utils/my_const/color_const.dart';
import 'package:monumental/utils/my_const/font_const.dart';
import 'package:sizer/sizer.dart';

class SocialLoginBtn extends StatelessWidget {
  const SocialLoginBtn(
      {required this.image,
      required this.onPressed,
      required this.text,
      this.imagePadding,
      Key? key})
      : super(key: key);

  final Widget image;
  final String text;
  final void Function() onPressed;
  final double? imagePadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 32.sp,
      child: TextButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(
            COLOR_CONST.MORNING4.withOpacity(0.5),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.sp),
            ),
          ),
        ),
        onPressed: onPressed,
        icon: Padding(
          padding: EdgeInsets.symmetric(horizontal: imagePadding ?? 18.sp),
          child: SizedBox(height: 18.sp, width: 18.sp, child: image),
        ),
        label: Expanded(
          child: Text(
            text,
            style: FONT_CONST.BOLD_12,
          ),
        ),
      ),
    );
  }
}
