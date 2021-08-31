import 'package:flutter/material.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

class SignInCheck extends StatefulWidget {
  const SignInCheck({
    Key? key,
  }) : super(key: key);

  @override
  _SignInCheckState createState() => _SignInCheckState();
}

class _SignInCheckState extends State<SignInCheck> {
  var _selected = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Checkbox(
            checkColor: COLOR_CONST.ECLIPSE,
            fillColor: MaterialStateProperty.all(COLOR_CONST.MORNING4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.sp),
            ),
            value: _selected,
            onChanged: (bool? value) {
              setState(() {
                _selected = value!;
              });
            },
          ),
        ),
        Text(
          'Keep me signed in ',
          style: FONT_CONST.MEDIUM_12,
        ),
      ],
    );
  }
}
