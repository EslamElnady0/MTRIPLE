import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';

class DoctorWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  const DoctorWidget({super.key, required this.imagePath, required this.name});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35.r),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
                width: 162.w,
              ),
              Image.asset(
                "assets/images/Book_button.png",
                width: 162.w,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            child: Text(
              name,
              style: Styles.style20whiteBold,
            ),
          )
        ],
      ),
    );
  }
}
