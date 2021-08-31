import 'package:flutter/material.dart';
import 'package:monumental/gen/fonts.gen.dart';
import 'package:monumental/utils/my_const/color_const.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

// ignore: avoid_classes_with_only_static_members,camel_case_types
class FONT_CONST {
  static final REGULAR = TextStyle(
    fontFamily: FontFamily.manrope,
    color: COLOR_CONST.ECLIPSE,
    fontWeight: FontWeight.w400,
  );

  static final BOLD = REGULAR.copyWith(fontWeight: FontWeight.bold);
  static final MEDIUM = REGULAR.copyWith(fontWeight: FontWeight.w500);

  static final BOLD_10 = BOLD.copyWith(fontSize: 10.sp);
  static final BOLD_11 = BOLD.copyWith(fontSize: 11.sp);
  static final BOLD_12 = BOLD.copyWith(fontSize: 12.sp);
  static final BOLD_14 = BOLD.copyWith(fontSize: 14.sp);

  static final MEDIUM_10 = MEDIUM.copyWith(fontSize: 10.sp);
  static final MEDIUM_11 = MEDIUM.copyWith(fontSize: 11.sp);
  static final MEDIUM_12 = MEDIUM.copyWith(fontSize: 12.sp);
  static final MEDIUM_13 = MEDIUM.copyWith(fontSize: 13.sp);
  static final MEDIUM_14 = MEDIUM.copyWith(fontSize: 14.sp);

  static final BOLD_12_MORNING2 = BOLD_12.copyWith(color: COLOR_CONST.MORNING2);
  static final BOLD_14_MORNING2 = BOLD_14.copyWith(color: COLOR_CONST.MORNING2);

  static final BOLD_12_MORNING4 = BOLD_12.copyWith(color: COLOR_CONST.MORNING4);

  static final TITLE_REGULAR = REGULAR.copyWith(fontFamily: FontFamily.klasik);
  static final TITLE_BOLD = TITLE_REGULAR.copyWith(fontWeight: FontWeight.bold);

  static final TITLE_REGULAR_18 = TITLE_REGULAR.copyWith(fontSize: 18.sp);
  static final TITLE_REGULAR_20 = TITLE_REGULAR.copyWith(fontSize: 20.sp);
  static final TITLE_REGULAR_24 = TITLE_REGULAR.copyWith(fontSize: 24.sp);
  static final TITLE_REGULAR_32 = TITLE_REGULAR.copyWith(fontSize: 32.sp);

  static final TITLE_BOLD_24 = TITLE_BOLD.copyWith(fontSize: 24.sp);
  static final TITLE_BOLD_32 = TITLE_BOLD.copyWith(fontSize: 32.sp);
}
