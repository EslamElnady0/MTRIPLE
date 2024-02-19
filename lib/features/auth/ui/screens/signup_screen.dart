import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_footer.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_head.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const AuthScreenHead(),
                    SizedBox(
                      height: 27.h,
                    ),
                    const CustomAuthTextField(
                        hintText: "First Name",
                        icon: FontAwesomeIcons.circleUser),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomAuthTextField(
                        hintText: "Last Name",
                        icon: FontAwesomeIcons.circleUser),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomAuthTextField(
                        hintText: "Email", icon: Icons.email_outlined),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomAuthTextField(
                        hintText: "Password", icon: Icons.lock_outline),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomAuthTextField(
                        hintText: "Confirm Password", icon: Icons.lock_outline),
                    SizedBox(
                      height: 35.h,
                    ),
                    Hero(
                      tag: "signup tag",
                      child: Material(
                        type: MaterialType.transparency,
                        child: CustomAuthButton(
                          text: "Sign up",
                          onTap: () {
                            Navigator.pushNamed(context, Routes.nickName);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      const Spacer(),
                      const AuthScreensFooter(),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
