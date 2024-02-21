import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtriple/core/colors/colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(



    colorScheme: ColorScheme.fromSeed(
      primary: MainColors.white ,
      seedColor: MainColors.white,),
    fontFamily: GoogleFonts.cairo().fontFamily,
    scaffoldBackgroundColor: MainColors.black,
    useMaterial3: true,
    textTheme:  TextTheme(
        bodySmall: GoogleFonts.cairo(
          color: MainColors.white,
          fontSize: 14.sp,

          fontWeight: FontWeight.w400,
          height: 0.h,
          letterSpacing: -0.24,
        ),
        titleMedium:  GoogleFonts.cairo(
          color: MainColors.white,
          fontSize: 20.sp,

          fontWeight: FontWeight.w600,
          height: 0,
          letterSpacing: -0.40,
        ),

        bodyMedium: GoogleFonts.cairo(

          color: MainColors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          height: 0,
          letterSpacing: -0.24,
        )),
  );
}