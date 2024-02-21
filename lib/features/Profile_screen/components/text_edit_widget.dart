import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';

import '../../../core/colors/colors.dart';
import '../../../core/themes/themes.dart';

Widget defaultTextFormFeild(
  context, {
  required TextInputType keyboardType,
  String? Function(String?)? validate,
  String? hint,
  Widget? suffix,
  bool secure = false,
  void Function(String)? onSubmit,
  void Function(String)? onChanged,
  TextEditingController? controller,
  bool? enabled,
}) =>
    TextFormField(
      style: Styles.style16whiteSemiBold,
      controller: controller,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      obscureText: secure,
      keyboardType: keyboardType,
      validator: validate,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          gapPadding: 2,
          borderSide: BorderSide(width: 2.w, color: MainColors.white),
          borderRadius: BorderRadius.circular(14),
        ),
        focusColor: MainColors.white,
        border: OutlineInputBorder(
          gapPadding: 2,
          borderSide: BorderSide(width: 2.w, color: MainColors.white),
          borderRadius: BorderRadius.circular(14),
        ),
        errorStyle: const TextStyle(height: 1),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 13, horizontal: 12),
        suffixIcon: suffix,
        hintText: hint,
        constraints: BoxConstraints(maxWidth: 163.w),
        alignLabelWithHint: true,
        hintStyle: AppTheme.darkTheme.textTheme.bodyMedium!
            .copyWith(color: Colors.white),
      ),
    );
