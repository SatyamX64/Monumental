import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monumental/app/app_router.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/presentation/custom_ui/custom_ui.dart';
import 'package:monumental/utils/my_const/my_const.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Log In with Email',
            style: FONT_CONST.MEDIUM_16,
          ),
          Divider(
            height: 24,
            thickness: 1,
            color: COLOR_CONST.CREAM1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _buildEmailField(),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildPasswordField()),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _buildLoginButton()),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Forgot Password?',
            style: FONT_CONST.MEDIUM_14
                .copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 6,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Don't have an account? ",
              style: FONT_CONST.MEDIUM_14,
              children: <TextSpan>[
                TextSpan(
                  text: 'Sign Up',
                  style: FONT_CONST.BOLD_14,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.of(context).pushNamed(AppRouter.REGISTER);
                    },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
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
        style: FONT_CONST.BOLD_16_MORNING4,
        selectionControls: CustomColorSelectionHandle(handleColor: COLOR_CONST.MORNING4),
        decoration: InputDecoration(
          filled: true,
          fillColor: COLOR_CONST.CREAM2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          hintText: 'Email',
          hintStyle: FONT_CONST.MEDIUM_16,
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
        style: FONT_CONST.BOLD_16_MORNING4,
        selectionControls: CustomColorSelectionHandle(handleColor: COLOR_CONST.MORNING4),
        decoration: InputDecoration(
          filled: true,
          fillColor: COLOR_CONST.CREAM2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          hintText: 'Password',
          hintStyle: FONT_CONST.MEDIUM_16,
          isDense: true,
          suffix: InkWell(
              onTap: () {}, child: Text('Show', style: FONT_CONST.MEDIUM_14)),
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
