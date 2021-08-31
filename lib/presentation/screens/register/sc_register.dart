import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/presentation/custom_ui/custom_ui.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

import 'widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.sp, vertical: 16.sp),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.images.registerHeader.image(height: 132.sp),
                      SizedBox(
                        height: 12.sp,
                      ),
                      Text(
                        'CREATE YOUR ACCOUNT',
                        style: FONT_CONST.TITLE_REGULAR_18,
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                      _buildUserNameField(),
                      SizedBox(
                        height: 6.sp,
                      ),
                      _buildEmailField(),
                      SizedBox(
                        height: 6.sp,
                      ),
                      _buildPasswordField(),
                      SizedBox(
                        height: 16.sp,
                      ),
                      const SignInCheck(),
                      SizedBox(
                        height: 1.sp,
                      ),
                      const MailMeCheck(),
                      SizedBox(
                        height: 14.sp,
                      ),
                      CustomButton(text: 'Create Account', onPressed: () {}),
                      Row(children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 12.sp),
                            child: Divider(
                              height: 32.sp,
                              color: COLOR_CONST.ECLIPSE.withOpacity(0.5),
                            ),
                          ),
                        ),
                        Text(
                          "Or sign in with",
                          style: FONT_CONST.MEDIUM_10.copyWith(
                              color: COLOR_CONST.ECLIPSE.withOpacity(0.5)),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12.sp),
                            child: Divider(
                              height: 32.sp,
                              color: COLOR_CONST.ECLIPSE.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          const Expanded(
                            child: GoogleRegisterBtn(),
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          const Expanded(
                            child: FacebookRegisterBtn(),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16.sp,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Already have an account? ",
                          style: FONT_CONST.MEDIUM_11,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign In',
                              style: FONT_CONST.BOLD_11,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).pop();
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  TextSelectionTheme _buildPasswordField() {
    return TextSelectionTheme(
      data: TextSelectionThemeData(selectionColor: Colors.yellow.shade200),
      child: TextField(
        cursorColor: Colors.black,
        style: FONT_CONST.BOLD_12_MORNING4,
        selectionControls:
            CustomColorSelectionHandle(handleColor: COLOR_CONST.MORNING4),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide.none,
          ),
          suffix: InkWell(
            onTap: () {},
            child: Text('Show', style: FONT_CONST.MEDIUM_11),
          ),
          hintText: 'Password',
          hintStyle: FONT_CONST.MEDIUM_12,
          isDense: true,
          prefixIcon: Icon(
            CupertinoIcons.lock,
            color: COLOR_CONST.MORNING4,
          ),
        ),
      ),
    );
  }

  TextSelectionTheme _buildEmailField() {
    return TextSelectionTheme(
      data: TextSelectionThemeData(selectionColor: Colors.yellow.shade200),
      child: TextField(
        cursorColor: Colors.black,
        style: FONT_CONST.BOLD_12_MORNING4,
        selectionControls:
            CustomColorSelectionHandle(handleColor: COLOR_CONST.MORNING4),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
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

  TextSelectionTheme _buildUserNameField() {
    return TextSelectionTheme(
      data: TextSelectionThemeData(selectionColor: Colors.yellow.shade200),
      child: TextField(
        cursorColor: Colors.black,
        style: FONT_CONST.BOLD_12_MORNING4,
        selectionControls:
            CustomColorSelectionHandle(handleColor: COLOR_CONST.MORNING4),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.sp),
            borderSide: BorderSide.none,
          ),
          hintText: 'Full Name',
          hintStyle: FONT_CONST.MEDIUM_12,
          isDense: true,
          prefixIcon: Icon(
            Icons.person_outline,
            color: COLOR_CONST.MORNING4,
          ),
        ),
      ),
    );
  }
}
