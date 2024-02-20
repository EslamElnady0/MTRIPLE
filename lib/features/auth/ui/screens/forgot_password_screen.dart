import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';
import 'package:mtriple/features/auth/ui/components/custom_text_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var formKey = GlobalKey<FormState>();
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Form(
            key: formKey,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48.36.h,
                      ),
                      Hero(
                          tag: "shrink-tag",
                          child:
                              Image.asset("assets/images/small mtriple.png")),
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
                      CustomAuthTextField(
                          controller: _controller,
                          validator: (value) {
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(value!)) {
                              return "Please, enter a valid email form";
                            } else {
                              return null;
                            }
                          },
                          hintText: "Email",
                          icon: Icons.email_outlined),
                      SizedBox(
                        height: 16.h,
                      ),
                      Hero(
                          tag: "login-tag",
                          child: Material(
                              type: MaterialType.transparency,
                              child: CustomAuthButton(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                  } else {}
                                },
                              ))),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
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
                )
              ],
            ),
          )),
    );
  }
}
