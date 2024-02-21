import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/styles.dart';
import 'custom_text_button.dart';

class CustomStackAndButton extends StatelessWidget {

  final void Function()? onTap;
  final String? text;
  final String? image;

  const CustomStackAndButton({
    super.key,
   required this.onTap,
    required this.text,
    required  this.image,

  });



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(image.toString()),

            Positioned(
                top: 20.h,
                left: 22.w,
                right: 50.w,
                child: Text(text.toString(),style:
                Styles.style40whiteBold ,)),



          ],
        ),
        SizedBox(height: 20.h,),
        CustomButton(
          raduis: 16.r,
          text: 'START',

          onTap: onTap,

        ),
      ],
    );
  }
}
