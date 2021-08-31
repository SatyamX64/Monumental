import 'package:flutter/material.dart';
import 'package:monumental/utils/my_const/font_const.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.text, required this.onPressed, this.color, Key? key})
      : super(key: key);

  final String text;
  final void Function() onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.sp,
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
          primary: color ?? COLOR_CONST.MORNING4,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: FONT_CONST.BOLD_12,
        ),
      ),
    );
  }
}
