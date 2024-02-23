import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/styles/styles.dart';

import '../../../core/Routes/routes.dart';

class CustomEditButton extends StatelessWidget {
  const CustomEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.account),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 6.88.w,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: MainColors.white),
            borderRadius: BorderRadius.circular(3.36.w)),
        child: Row(
          children: [
            Text(
              "Edit ",
              style: Styles.style12white,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 12.r,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
