import 'package:flutter/material.dart';
import 'package:monumental/utils/my_const/color_const.dart';
import 'package:monumental/utils/my_const/font_const.dart';

class SocialLoginBtn extends StatelessWidget {
  const SocialLoginBtn(
      {required this.image,
      required this.onPressed,
      required this.text,
      Key? key})
      : super(key: key);

  final Widget image;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50,
      child: TextButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(COLOR_CONST.MORNING4.withOpacity(0.5))
        ),
        onPressed: onPressed,
        icon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: image,
        ),
        label: Expanded(
          child: Text(
            text,
            style: FONT_CONST.BOLD_16,
          ),
        ),
      ),
    );
  }
}
