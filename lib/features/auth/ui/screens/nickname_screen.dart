import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';
import 'package:mtriple/features/auth/ui/components/custom_text_button.dart';

class NickNameScreen extends StatelessWidget {
  const NickNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(children: [
          SizedBox(
            height: 48.36.h,
          ),
          Image.asset("assets/images/small mtriple.png"),
          SizedBox(
            height: 34.h,
          ),
          Text(
            "Register with a Nickname!",
            style: Styles.style24whiteBold,
          ),
          SizedBox(
            height: 17.h,
          ),
          Text(
            "Sign up with a unique nickname that represents your online identity and personality.",
            style: Styles.style16white.copyWith(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            "assets/images/standing person.png",
            height: 341.h,
            fit: BoxFit.cover,
          ),
          const CustomAuthTextField(
              hintText: "Nickname", icon: FontAwesomeIcons.circleUser),
          SizedBox(
            height: 17.h,
          ),
          const CustomAuthButton(
            text: "Continue",
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: const CustomTextButtton(text: "Skip"),
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ]),
      ),
    );
  }
}
