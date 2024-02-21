import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/styles/styles.dart';

class CustomAuthButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final Widget? child;
  final Color? color;
  final TextStyle? style;
  final double? raduis;
  final Border? border;
  const CustomAuthButton({
    super.key,
    this.onTap,
    this.text,
    this.child,
    this.color,
    this.style,
    this.raduis,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55.h,
        decoration: BoxDecoration(
            color: color ?? Colorrs.green,
            border: border,
            borderRadius: BorderRadius.circular(raduis ?? 8.r)),
        child: child ??
            Center(
              child: Text(
                text ?? "Log in",
                style: style ?? Styles.style20whiteBold,
              ),
            ),
      ),
    );
  }
}
