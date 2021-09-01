import 'package:flutter/material.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/presentation/custom_ui/custom_ui.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.sp)),
      child: Column(
        children: [
          Text(
            'Enter your registered email below to receive password reset instruction',
            style: FONT_CONST.MEDIUM_11,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.sp,
          ),
          _buildEmailField(),
          SizedBox(
            height: 6.sp,
          ),
          CustomButton(text: 'Send Reset Link', onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildEmailField() {
    return TextSelectionTheme(
      data: TextSelectionThemeData(selectionColor: Colors.yellow.shade200),
      child: TextField(
        cursorColor: Colors.black,
        style: FONT_CONST.BOLD_12_MORNING4,
        selectionControls:
            CustomColorSelectionHandle(handleColor: COLOR_CONST.MORNING4),
        decoration: InputDecoration(
          filled: true,
          fillColor: COLOR_CONST.CREAM2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide.none,
          ),
          hintText: 'Email',
          hintStyle: FONT_CONST.MEDIUM_12,
          isDense: true,
          prefixIcon: Icon(
            Icons.email_outlined,
            color: COLOR_CONST.MORNING4,
          ),
        ),
      ),
    );
  }
}
