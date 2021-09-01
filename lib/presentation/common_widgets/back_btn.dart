import 'package:flutter/material.dart';
import 'package:monumental/gen/assets.gen.dart';
import 'package:monumental/presentation/custom_ui/svg_image.dart';
import 'package:monumental/utils/my_const/my_const.dart';
import 'package:sizer/sizer.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: Container(
        height: 36.sp,
        width: 36.sp,
        padding: EdgeInsets.all(12.sp),
        decoration: BoxDecoration(
          color: COLOR_CONST.ECLIPSE.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
        child: MySvgImage(
          path: Assets.images.icons.back.path,
          color: COLOR_CONST.ECLIPSE,
        ),
      ),
    );
  }
}
