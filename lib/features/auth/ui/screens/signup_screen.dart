import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/services/firebase_auth_service.dart';
import 'package:mtriple/core/services/firebase_firestore_service.dart';
import 'package:mtriple/features/auth/data/cubits/sign%20up/signup_cubit.dart';
import 'package:mtriple/features/auth/data/models/user_model.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_footer.dart';
import 'package:mtriple/features/auth/ui/components/auth_screens_head.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _confirmPassController;
  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPassController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
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
                        height: 27.h,
                      ),
                      CustomAuthTextField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            } else {
                              return null;
                            }
                          },
                          controller: _firstNameController,
                          hintText: "First Name",
                          icon: FontAwesomeIcons.circleUser),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomAuthTextField(
                          controller: _lastNameController,
                          hintText: "Last Name",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            } else {
                              return null;
                            }
                          },
                          icon: FontAwesomeIcons.circleUser),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomAuthTextField(
                          validator: (value) {
                            if (!RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                .hasMatch(value!)) {
                              return "Please, enter a valid email form";
                            } else {
                              return null;
                            }
                          },
                          controller: _emailController,
                          hintText: "Email",
                          icon: Icons.email_outlined),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomAuthTextField(
                          controller: _passwordController,
                          isPassword: true,
                          hintText: "Password",
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
                          icon: Icons.lock_outline),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomAuthTextField(
                          controller: _confirmPassController,
                          isPassword: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "this field is required";
                            }
                            if (!(_passwordController.text ==
                                _confirmPassController.text)) {
                              return "password dosen't match";
                            } else {
                              return null;
                            }
                          },
                          hintText: "Confirm Password",
                          icon: Icons.lock_outline),
                      SizedBox(
                        height: 35.h,
                      ),
                      Hero(
                        tag: "signup-tag",
                        child: Material(
                          type: MaterialType.transparency,
                          child: BlocListener<SignupCubit, SignupState>(
                            listener: (context, state) {
                              if (state is SignupFailure) {
                                var snackBar =
                                    SnackBar(content: Text(state.errMessage));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
                              if (state is SignupSuccess) {
                                FirebaseFirestoreServices firestoreServices =
                                    FirebaseFirestoreServices();
                                UserModel user = UserModel(
                                    email: _emailController.text,
                                    first: _firstNameController.text,
                                    last: _lastNameController.text,
                                    userId:
                                        FirebaseAuth.instance.currentUser!.uid,
                                    nickName: "",
                                    password: _passwordController.text);
                                firestoreServices.addToFirestore(user: user);
                                Navigator.pushNamed(context, Routes.nickName);
                              }
                            },
                            child: CustomAuthButton(
                              text: "Sign up",
                              onTap: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<SignupCubit>().signUpUser(
                                      email: _emailController.text,
                                      password: _passwordController.text);
                                } else {}
                              },
                            ),
                          ),
                        ),
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
                      AuthScreensFooter(
                        onSkipTapped: () {
                          FirebaseAuthServices firebaseAuthServices =
                              FirebaseAuthServices();
                          firebaseAuthServices.signInAno();
                          Navigator.pushNamed(context, Routes.home);
                        },
                      ),
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
