import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/Routes/routes.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/Profile_screen/components/custom_pop_up_menu.dart';

import '../../../core/colors/colors.dart';
import '../../Setting_Screen/component/profile_widget.dart';

Widget myPosts({required BuildContext context}) {
  GlobalKey actionKey = GlobalKey();
  return Container(
    width: 338.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16.r),
      color: MainColors.containerColor,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
    child: Column(
      children: [
        profile(
            style: Styles.style16whiteBold,
            height: 32.h,
            width: 32.w,
            widget: GestureDetector(
              onTap: () {
                showCustomPopUpMenu(
                  context: context,
                  actionKey: actionKey,
                  text1: "Edit",
                  text2: "Delete",
                  icon1: Icons.edit_square,
                  icon2: FontAwesomeIcons.trash,
                  size2: 20.r,
                  onTap1: () => Navigator.pushNamed(context, Routes.editPost),
                );
              },
              child: Icon(
                Icons.more_vert,
                color: MainColors.white,
                key: actionKey,
              ),
            )),
        const Divider(),
        const Text(
          'Today, I want to remmind everyone that its okay to prioritize your mental health. Take breaks when you need them',
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
