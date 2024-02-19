import 'package:flutter/material.dart';
import 'package:mtriple/core/colors/colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colorrs.black,
    useMaterial3: true,
    textTheme: const TextTheme(
        bodySmall: TextStyle(
          color: Color(0xFFD1D1D1),
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w400,
          height: 0,
          letterSpacing: -0.24,
        ),
        titleMedium: TextStyle(
          color: Color(0xFF0E0F0E),
          fontSize: 20,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w600,
          height: 0,
          letterSpacing: -0.40,
        ),
        bodyMedium: TextStyle(
          color: Color(0xFF393939),
          fontSize: 14,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w400,
          height: 0,
          letterSpacing: -0.24,
        )),
  );
}
