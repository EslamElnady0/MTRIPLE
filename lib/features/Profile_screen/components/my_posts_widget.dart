import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';

import '../../../core/colors/colors.dart';
import '../../Setting_Screen/component/profile_widget.dart';

Widget myPosts() =>    Container(
  
  width: 338.w,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16.r),
    color: MainColors.containerColor,
  ),
  padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.w),
  child: Expanded(
    child: Column(
    
      children: [
    profile(
      style: Styles.style16whiteBold,
        height: 32.h,width: 32.w,widget: const Icon(Icons.more_vert,color: MainColors.white,)),
      const  Divider(),
    const Text('Today, I want to remmind everyone that its okay to prioritize your mental health. Take breaks when you need them'),


      ],
    ),
  ),
);