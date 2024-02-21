import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/features/Setting_Screen/component/profile_widget.dart';

import '../../../../core/styles/styles.dart';
import '../../relax-breathing/ui/components/relax-breath_custom_head.dart';
import '../component/custom_dark_mode_widget.dart';
import '../component/outLined_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ScreenHeadRelaxBreath(
                  gap: 48.h,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: Styles.style20whiteBold,
                    ),
                    Text(
                      ' Adel ',
                      style: GoogleFonts.cairo(
                          color: MainColors.greenLoad,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'to MTRIPLE!',
                      style: Styles.style20whiteBold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'You can manage your account on this page',
                  style: Styles.subTitle12,
                ),
                SizedBox(
                  height: 40.h,
                ),
                profile(
                  style: Styles.style20whiteBold,
                  width: 48.w,
                  height: 48.h,
                  widget: customOutLinedButton(
                    radius: 3.36.r,
                    color: MainColors.white,
                    text: 'Edit',
                    onTap: () {},
                    isIcon: true,
                    style: Styles.style12white,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  height: 427.h,
                  width: 333.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: MainColors.containerColor,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
                  child: Column(
                    children: [
                      row(
                          text: 'Change Language',
                          widget: Row(
                            children: [
                              Text(
                                'EN',
                                style: Styles.style16whiteBold,
                              ),
                              SvgPicture.asset('assets/images/drop_down.svg'),
                            ],
                          )),
                      SizedBox(
                        height: 30.h,
                      ),
                      row(text: 'Dark Mode', widget: darkModeIcon()),
                      SizedBox(
                        height: 30.h,
                      ),
                      row(
                          text: 'Notifications',
                          widget: const Icon(
                            Icons.notifications,
                            color: MainColors.white,
                          )),
                      SizedBox(
                        height: 30.h,
                      ),
                      row(
                        text: 'Feedback',
                        widget: SvgPicture.asset('assets/images/feedback.svg'),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      row(
                          text: 'Confidentiality',
                          widget: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: MainColors.white,
                          )),
                      SizedBox(
                        height: 30.h,
                      ),
                      row(
                          text: 'Log out',
                          widget: InkWell(
                              onTap: () {
                                // Navigator.pushNamedAndRemoveUntil(
                                //     context, Routes.authStart, (route) => false);
                              },
                              child: const Icon(
                                Icons.logout,
                                color: MainColors.white,
                              ))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget row({
    required Widget widget,
    required String text,
  }) =>
      Row(
        children: [
          Text(
            text,
            style: Styles.style20whiteBold,
          ),
          const Spacer(),
          widget,
        ],
      );
}
