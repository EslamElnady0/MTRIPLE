import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/features/Profile_screen/components/custom_pop_up_menu.dart';
import 'package:mtriple/features/home/ui/components/custom_like_button.dart';

// ignore: must_be_immutable
class PostWidget extends StatelessWidget {
  final String imagePath;
  final String post;
  final String name;
  bool isLiked = false;

  PostWidget({
    super.key,
    required this.imagePath,
    required this.name,
    required this.post,
    this.isLiked = false,
  });

  @override
  Widget build(BuildContext context) {
    var actionKey = GlobalKey();
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
                    GestureDetector(
                      onTap: () {
                        showCustomPopUpMenu(
                            context: context,
                            actionKey: actionKey,
                            text1: "Interested",
                            text2: "Report",
                            icon1: FontAwesomeIcons.userCheck,
                            icon2: Icons.report_off,
                            size1: 20.r);
                      },
                      child: Icon(
                        Icons.more_vert,
                        key: actionKey,
                        color: Colors.white,
                      ),
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
            LikeButton(
              isLiked: isLiked,
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
                      suffixIcon: ImageIcon(
                        const AssetImage("assets/images/comment_icon.png"),
                        color: Colors.white.withOpacity(0.5),
                      ),
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
