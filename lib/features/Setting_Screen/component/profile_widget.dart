import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors/colors.dart';
import '../../../core/styles/styles.dart';
import 'outLined_button.dart';

Widget profile({
  required double height,
  required double width,
  required TextStyle style,
  required Widget widget,

}) => Row(children: [
  Image.asset('assets/images/circle.png',height: height,width: width ,),
  SizedBox(width: 10.w,),
  Text('Adel Gabr',
    style: style),
  const Spacer(),
  widget,



],);