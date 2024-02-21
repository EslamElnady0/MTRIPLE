import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';

class VideoWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const VideoWidget({super.key, required this.title, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Styles.style24whiteBold,
        ),
        SizedBox(
          height: 10.h,
        ),
        ClipRRect(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(imagePath),
              Image.asset("assets/images/youtube.png"),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        )
      ],
    );
  }
}
