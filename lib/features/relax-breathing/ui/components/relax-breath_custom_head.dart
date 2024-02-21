import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenHeadRelaxBreath extends StatelessWidget {
  final double? gap;
  const ScreenHeadRelaxBreath({
    super.key,
    this.gap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Hero(
          tag: 'shrink-tag',
          child: SvgPicture.asset(
            "assets/images/logo.svg",
            width: 155.84.w,
            height: 20.27.h,
          ),
        ),

      ],
    );
  }
}