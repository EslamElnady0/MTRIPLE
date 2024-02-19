import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreenHead extends StatelessWidget {
  const AuthScreenHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90.h,
        ),
        Image.asset(
          "assets/images/MTRIPLE.png",
          width: 180.w,
          height: 127.h,
        ),
        SizedBox(
          height: 56.h,
        ),
        const Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
