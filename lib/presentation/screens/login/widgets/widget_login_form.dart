import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monumental/app/app_router.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/presentation/custom_ui/custom_ui.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 8.sp, 0, 18.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.sp),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Log In with Email',
            style: FONT_CONST.MEDIUM_12,
          ),
          Divider(
            height: 20.sp,
            thickness: 1,
            color: COLOR_CONST.CREAM1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: _buildEmailField(),
          ),
          SizedBox(
            height: 6.sp,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: _buildPasswordField()),
          SizedBox(
            height: 16.sp,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: _buildLoginButton()),
          SizedBox(
            height: 14.sp,
          ),
          Text(
            'Forgot Password?',
            style: FONT_CONST.MEDIUM_11
                .copyWith(decoration: TextDecoration.underline),
          ),
          SizedBox(
            height: 6.sp,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Don't have an account? ",
              style: FONT_CONST.MEDIUM_11,
              children: <TextSpan>[
                TextSpan(
                  text: 'Sign Up',
                  style: FONT_CONST.BOLD_11,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed(AppRouter.REGISTER);
                    },
                ),
              ],
            ),
          ),
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

  Widget _buildPasswordField() {
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
          hintText: 'Password',
          hintStyle: FONT_CONST.MEDIUM_12,
          isDense: true,
          suffix: InkWell(
            onTap: () {},
            child: Text('Show', style: FONT_CONST.MEDIUM_11),
          ),
          prefixIcon: Icon(
            CupertinoIcons.lock,
            color: COLOR_CONST.MORNING4,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return CustomButton(
      onPressed: () {},
      text: 'Login',
    );
  }
}
