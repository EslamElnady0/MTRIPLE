import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/services/firebase_firestore_service.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_textfield.dart';
import 'package:mtriple/features/auth/ui/components/custom_text_button.dart';

class NickNameScreen extends StatefulWidget {
  const NickNameScreen({super.key});

  @override
  State<NickNameScreen> createState() => _NickNameScreenState();
}

class _NickNameScreenState extends State<NickNameScreen> {
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
      resizeToAvoidBottomInset: true,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Form(
            key: formKey,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
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
                      style: Styles.style16whiteSemiBold
                          .copyWith(color: Colors.grey),
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
                    CustomAuthTextField(
                        controller: _controller,
                        hintText: "Nickname",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "this field is required";
                          } else {
                            return null;
                          }
                        },
                        icon: FontAwesomeIcons.circleUser),
                    SizedBox(
                      height: 17.h,
                    ),
                    CustomAuthButton(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          FirebaseFirestoreServices firestoreServices =
                              FirebaseFirestoreServices();

                          firestoreServices.updateNickname(
                              nickName: _controller.text);
                          Navigator.pushNamed(context, Routes.home);
                        } else {}
                      },
                      text: "Continue",
                    ),
                  ]),
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
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 6.w),
                          child: CustomTextButtton(
                            text: "Skip",
                            onTap: () =>
                                Navigator.pushNamed(context, Routes.home),
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
