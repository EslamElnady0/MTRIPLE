import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/styles/styles.dart';

showCustomPopUpMenu({
  required BuildContext context,
  required GlobalKey actionKey,
  required String text1,
  required String text2,
  required IconData icon1,
  required IconData icon2,
  void Function()? onTap1,
  void Function()? onTap2,
  double? size1,
  double? size2,
}) {
  RenderBox renderBox =
      actionKey.currentContext!.findRenderObject() as RenderBox;
  final Offset offset = renderBox.localToGlobal(Offset.zero);

  showMenu(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      color: MainColors.popUpMenuColor,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy,
        offset.dx + renderBox.size.width,
        offset.dy + renderBox.size.height,
      ),
      items: [
        PopupMenuItem(
            onTap: onTap1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: Row(
                children: [
                  Icon(
                    icon1,
                    color: Colors.white,
                    size: size1 ?? 24.r,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Text(
                    text1,
                    style: Styles.style20whiteSemiBold,
                  )
                ],
              ),
            )),
        PopupMenuItem(
            onTap: onTap2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: Row(
                children: [
                  Icon(
                    icon2,
                    color: Colors.white,
                    size: size2 ?? 24.r,
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    text2,
                    style: Styles.style20whiteSemiBold,
                  )
                ],
              ),
            ))
      ]);
}
