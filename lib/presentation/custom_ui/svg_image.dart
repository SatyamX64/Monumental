import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySvgImage extends StatelessWidget {
  final String path;
  final double? width;
  final double? height;
  final Color color;
  final bool applyColorFilter;

  const MySvgImage(
      {required this.path,
      this.width,
      this.height,
      this.color = Colors.white,
      this.applyColorFilter = true});

  @override
  Widget build(BuildContext context) {
    return applyColorFilter
        ? SvgPicture.asset(
            path,
            width: width,
            height: height,
            color: color,
          )
        : SvgPicture.asset(
            path,
            width: width,
            height: height,
          );
  }
}
