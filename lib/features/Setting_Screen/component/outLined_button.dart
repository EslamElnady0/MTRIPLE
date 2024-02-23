import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customOutLinedButton({
  required String text,
  required TextStyle? style,
  required Function()? onTap,
  required double radius,
  required bool isIcon,
  required Color color,
}) =>
    OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: color),
              borderRadius: BorderRadius.circular(radius)),
          side: BorderSide(color: color),
        ),
        onPressed: onTap,
        child: Row(
          children: [
            Text(
              text,
              style: style,
            ),
            isIcon
                ? Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 12.r,
                  )
                : Container(),
          ],
        ));
