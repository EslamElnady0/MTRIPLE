import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/constants.dart';
import 'package:mtriple/core/styles/styles.dart';

class CustomAuthTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool? isPassword;
  const CustomAuthTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ?? false,
      cursorColor: Colors.white,
      style: Styles.style16white,
      decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            size: 22.r,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 16.sp),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          border: Constants.border,
          focusedBorder: Constants.border,
          enabledBorder: Constants.border),
    );
  }
}
