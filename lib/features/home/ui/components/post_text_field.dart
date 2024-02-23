import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/styles/styles.dart';

class PostTextField extends StatelessWidget {
  const PostTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style: Styles.style14whiteSemiBold,
      maxLines: 7,
      decoration: InputDecoration(
        filled: true,
        fillColor: MainColors.containerColor,
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
      ),
    );
  }
}
