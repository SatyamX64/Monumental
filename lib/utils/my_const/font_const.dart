import 'package:flutter/material.dart';
import 'package:monumental/gen/fonts.gen.dart';
import 'package:monumental/utils/my_const/color_const.dart';
import 'package:monumental/utils/my_const/my_const.dart';

// ignore: avoid_classes_with_only_static_members,camel_case_types
class FONT_CONST {
  static final REGULAR = TextStyle(
    fontFamily: FontFamily.manrope,
    color: COLOR_CONST.ECLIPSE,
    fontWeight: FontWeight.w400,
  );

  static final BOLD = REGULAR.copyWith(fontWeight: FontWeight.bold);

  static final BOLD_16 = BOLD.copyWith(fontSize: 17);
  static final BOLD_17 = BOLD.copyWith(fontSize: 17);

  static final BOLD_16_MORNING2 = BOLD.copyWith(color: COLOR_CONST.MORNING2);
  static final BOLD_17_MORNING2 = BOLD.copyWith(color: COLOR_CONST.MORNING2);

  static final TITLE_REGULAR = REGULAR.copyWith(fontFamily: FontFamily.klasik);

  static final TITLE_BOLD = TITLE_REGULAR.copyWith(fontWeight: FontWeight.bold);

  static final TITLE_BOLD_32 = TITLE_BOLD.copyWith(fontSize: 32);
  static final TITLE_BOLD_40 = TITLE_BOLD.copyWith(fontSize: 40);
}
