import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/Routes/routes.dart';
import 'package:mtriple/core/constants.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/core/colors/colors.dart';

// ignore: must_be_immutable
class PostsTab extends StatefulWidget {
  const PostsTab({super.key});

  @override
  State<PostsTab> createState() => _PostsTabState();
}

class _PostsTabState extends State<PostsTab> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Text(
                "This screen is your safe space to connect with others, share your experiences, and seek support.",
                maxLines: 2,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Constants.posts[index];
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: const Color(0xff373737),
                        height: 36.h,
                        indent: 25.w,
                        endIndent: 25.w,
                      );
                    },
                    itemCount: Constants.posts.length),
              ),
            )
          ],
        ),
        if (isPressed)
          GestureDetector(
            onTap: () {
              if (isPressed) {
                setState(() {
                  isPressed = !isPressed;
                });
              }
            },
            child: Container(
              color: isPressed
                  ? MainColors.black.withOpacity(0.5)
                  : Colors.transparent,
            ),
          ),
        Positioned(
          bottom: 120.h,
          right: 32.r,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isPressed = !isPressed;
              });
              if (!isPressed) {
                Navigator.pushNamed(context, Routes.addPost);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 48.w,
              width: isPressed ? 162.w : 48.w,
              padding: isPressed
                  ? EdgeInsets.only(left: 8.w, right: 20.w)
                  : EdgeInsets.zero,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: MainColors.green),
              child: isPressed
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 30.r,
                          color: MainColors.white,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Flexible(
                          flex: 5,
                          child: Text(
                            "Add a post",
                            style: isPressed
                                ? Styles.style20whiteBold
                                    .copyWith(color: MainColors.white)
                                : Styles.style12white,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    )
                  : Icon(
                      Icons.add,
                      size: 30.r,
                      color: MainColors.white,
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
