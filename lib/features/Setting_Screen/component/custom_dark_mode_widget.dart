import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors/colors.dart';

Widget darkModeIcon() => Stack(children: [
  Container(
    height: 30.h,
    width: 60.w,
    decoration: BoxDecoration(color: MainColors.black,
    borderRadius: BorderRadius.circular(10.r)
    
    ),
  ),

  Positioned(
      right: 0.w,
      child: const Icon(Icons.dark_mode,color: MainColors.white,)),
],);