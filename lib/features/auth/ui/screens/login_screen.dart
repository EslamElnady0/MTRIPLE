import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_footer.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_head.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            AuthScreenHead(
              gap: 48.h,
            ),
            const Hero(
              tag: "divider-tag",
              child: Divider(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const CustomAuthTextField(
              hintText: 'Email',
              icon: Icons.email_outlined,
            ),
            SizedBox(
              height: 25.h,
            ),
            const CustomAuthTextField(
              hintText: 'Password',
              icon: Icons.lock_outline,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.forgotPassword);
                },
                child: Text(
                  "Forgot your password?",
                  style: Styles.style12white,
                ),
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            const Hero(
              tag: "login-tag",
              child: Material(
                  type: MaterialType.transparency, child: CustomAuthButton()),
            ),
            const Spacer(),
            const AuthScreensFooter(),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
