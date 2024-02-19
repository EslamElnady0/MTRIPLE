import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';
import 'package:mtriple/features/auth/ui/components/custom_text_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            SizedBox(
              height: 48.36.h,
            ),
            Hero(
                tag: "shrink-tag",
                child: Image.asset("assets/images/small mtriple.png")),
            SizedBox(
              height: 34.h,
            ),
            Text(
              "Forgot your password?",
              style: Styles.style24whiteBold,
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              "Reset your password if you've forgotten it. We'll help you regain access to your account.",
              style: Styles.style16white.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 37.h,
            ),
            Image.asset(
              "assets/images/password.png",
              width: 238.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 24.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/remembering person.png",
                fit: BoxFit.cover,
                width: 245.w,
              ),
            ),
            const CustomAuthTextField(
                hintText: "Email", icon: Icons.email_outlined),
            SizedBox(
              height: 16.h,
            ),
            const Hero(
                tag: "login-tag",
                child: Material(
                    type: MaterialType.transparency,
                    child: CustomAuthButton())),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 6.w),
                child: CustomTextButtton(
                  text: "Back",
                  onTap: () => Navigator.pop(context),
                ),
              ),
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
