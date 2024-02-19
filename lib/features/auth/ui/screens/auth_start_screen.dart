import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_head.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_text_button.dart';

class AuthStartScreen extends StatelessWidget {
  const AuthStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            const AuthScreenHead(),
            SizedBox(
              height: 48.h,
            ),
            Hero(
              tag: "login tag",
              child: Material(
                type: MaterialType.transparency,
                child: CustomAuthButton(
                  text: "Log in",
                  onTap: () => Navigator.pushNamed(context, Routes.login),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Hero(
              tag: "signup tag",
              child: Material(
                type: MaterialType.transparency,
                child: CustomAuthButton(
                  text: "Sign up",
                  onTap: () => Navigator.pushNamed(context, Routes.signUp),
                ),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    "or",
                    style: Styles.style14white,
                  ),
                ),
                const Expanded(
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 26.h,
            ),
            Text(
              "You can continue across",
              style: Styles.style16white,
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomAuthButton(
              color: Colors.white,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Google",
                      style: Styles.style14white.copyWith(color: Colors.black),
                    ),
                    SizedBox(
                      width: 31.w,
                    ),
                    Image.asset("assets/images/google icon.png")
                  ],
                ),
              ),
            ),
            const Spacer(),
            const Row(
              children: [
                Spacer(),
                CustomTextButtton(
                  text: "Skip",
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
