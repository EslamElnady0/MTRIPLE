import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';

// ignore: must_be_immutable
class LikeButton extends StatefulWidget {
  bool isLiked;
  LikeButton({super.key, required this.isLiked});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isLiked = !widget.isLiked;
        });
      },
      child: SizedBox(
        width: 71.w,
        height: 60.h,
        child: Card(
          color: const Color(0xff2C2C2C),
          child: Image(
            image: const AssetImage(
              "assets/images/heart.png",
            ),
            color: widget.isLiked ? MainColors.green : null,
          ),
        ),
      ),
    );
  }
}
