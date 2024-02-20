import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/data/cubits/sign%20in/signin_cubit.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_footer.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_head.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Form(
                  key: formKey,
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
                      CustomAuthTextField(
                        controller: _emailController,
                        hintText: 'Email',
                        validator: (value) {
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value!)) {
                            return "Please, enter a valid email form";
                          } else {
                            return null;
                          }
                        },
                        icon: Icons.email_outlined,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      CustomAuthTextField(
                        controller: _passwordController,
                        isPassword: true,
                        hintText: 'Password',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is required";
                          } else if (value.length < 8) {
                            return "password must be 8 characters or more";
                          } else if (!value.contains(RegExp(r'[A-Z]'))) {
                            return "password should have at least one upper case character";
                          } else {
                            return null;
                          }
                        },
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
                      Hero(
                        tag: "login-tag",
                        child: Material(
                            type: MaterialType.transparency,
                            child: CustomAuthButton(
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<SigninCubit>().signInUser(
                                      email: _emailController.text,
                                      password: _passwordController.text);
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, Routes.home, (route) => false);
                                } else {}
                              },
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
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
