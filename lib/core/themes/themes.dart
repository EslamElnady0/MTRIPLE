import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtriple/core/colors/colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: MainColors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
    useMaterial3: true,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.cairo(
        color: const Color(0xFFD1D1D1),
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 0,
        letterSpacing: -0.24,
      ),
      titleMedium: GoogleFonts.cairo(
        color: const Color(0xFF0E0F0E),
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        height: 1,
        letterSpacing: -0.40,
      ),
      bodyMedium: GoogleFonts.cairo(
        color: const Color(0xFF393939),
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        height: 0,
        letterSpacing: -0.24,
      ),
      titleLarge: GoogleFonts.cairo(
          fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(
          height: 2,
          color: Colors.white,
          fontFamily: 'Cairo',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400),
    ),
  );
}
