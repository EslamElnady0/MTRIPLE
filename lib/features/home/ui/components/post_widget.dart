import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PostWidget extends StatelessWidget {
  String imagePath;
  String post;
  String name;

  PostWidget({
    super.key,
    required this.imagePath,
    required this.name,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: const Color(0xff2C2C2C),
          child: Padding(
            padding: EdgeInsets.all(15.r),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 20.r,
                      backgroundImage: AssetImage(imagePath),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(
                  height: 2,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  post,
                  style: Theme.of(context).textTheme.displayMedium,
                  maxLines: 6,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 71.w,
              height: 60.h,
              child: const Card(
                color: Color(0xff2C2C2C),
                child: Image(image: AssetImage("assets/images/heart.png")),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 14.h),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.r)),
                      suffixIcon: const ImageIcon(
                          AssetImage("assets/images/comment_icon.png")),
                      filled: true,
                      hintText: "Add a comment",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                      fillColor: const Color(0xff2C2C2C),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
