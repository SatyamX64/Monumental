import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/common_widgets/common_widgets.dart';
import 'package:monumental/presentation/custom_ui/custom_ui.dart';
import 'package:monumental/presentation/screens/forgot_pass/widgets/email_form.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ScrollConfiguration(
        behavior: CustomScrollBehavior(),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 72.sp,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: BackBtn(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
                Text(
                  'FORGOT YOUR PASSWORD?',
                  style: FONT_CONST.TITLE_REGULAR_18,
                ),
                SizedBox(
                  height: 16.sp,
                ),
                Assets.images.forgotPass.image(height: 180.sp),
                SizedBox(
                  height: 16.sp,
                ),
                const EmailForm(),
                SizedBox(
                  height: 24.sp,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Remember Password? ",
                    style: FONT_CONST.MEDIUM_11,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
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
      ),
    ));
  }
}
