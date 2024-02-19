import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/auth/ui/components/custom_text_button.dart';

class AuthScreensFooter extends StatelessWidget {
  final void Function()? onTap;
  const AuthScreensFooter({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextButtton(
            text: "Back",
            onTap: () => Navigator.pop(context),
          ),
          CustomTextButtton(
            text: "Skip",
            onTap: onTap,
          )
        ],
      ),
    );
  }
}
