import 'package:flutter/cupertino.dart';
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
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.w, color: color),
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
                ? SizedBox(
                    width: 5.w,
                  )
                : const SizedBox(),
            isIcon
                ? Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 16.r,
                  )
                : Container(),
          ],
        ));
