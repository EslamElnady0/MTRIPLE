import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/Breathing_details/ui/components/app_bar_widget.dart';
import 'package:mtriple/features/Setting_Screen/component/profile_widget.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/home/ui/components/post_text_field.dart';

class EditPostScreen extends StatelessWidget {
  const EditPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarDefaultTheme(context: context, title: "Edit a post"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            children: [
              const Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              profile(
                  height: 48.h,
                  width: 48.w,
                  style: Styles.style20whiteBold,
                  widget: const SizedBox()),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Write what's on your mind",
                style: Styles.style12white,
              ),
              SizedBox(
                height: 20.h,
              ),
              const PostTextField(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomAuthButton(
                    text: "Save",
                    raduis: 16.r,
                  )),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                      child: CustomAuthButton(
                    onTap: () => Navigator.pop(context),
                    text: "Cancel",
                    style: Styles.style20whiteBold
                        .copyWith(color: MainColors.greenLoad),
                    color: Colors.transparent,
                    raduis: 16.r,
                    border: Border.all(color: MainColors.greenLoad),
                  ))
                ],
              )
            ],
          ),
        ));
  }
}
