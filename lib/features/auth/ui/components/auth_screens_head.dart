import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreenHead extends StatelessWidget {
  final double? gap;
  const AuthScreenHead({
    super.key,
    this.gap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90.h,
        ),
        Hero(
          tag: 'shrink-tag',
          child: Image.asset(
            "assets/images/MTRIPLE.png",
            width: 180.w,
            height: 127.h,
          ),
        ),
        SizedBox(
          height: gap ?? 56.h,
        ),
      ],
    );
  }
}
