import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/onBoarding/data/onboarding_model.dart';

class Constants {
  static OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(color: Colors.white));

  static final List<OnboardingModel> onBoardingScreens = [
    OnboardingModel(
        image: "assets/images/onboarding photo1.svg",
        text: "Mental Health",
        height: 239.67.h,
        desc:
            "Explore the importance of mental health and common psychological issues in this introductory screen."),
    OnboardingModel(
        image: "assets/images/onboarding photo2.svg",
        text: "Techniques",
        height: 254.h,
        desc:
            "Unwind and harness the power of breathing with relaxation techniques. Learn how to use breathing and meditation to calm the mind and enhance mental well-being in this essential screen."),
    OnboardingModel(
        image: "assets/images/onboarding photo3.svg",
        text: "Community",
        height: 226.h,
        desc:
            "Join our private community where you can post, comment, and interact with others. Share your experiences, seek advice, and find solutions together in this inclusive space."),
    OnboardingModel(
        image: "assets/images/onboarding photo4.svg",
        text: "Consultations",
        height: 279.27.h,
        desc:
            "Access immediate, specialized psychological support from our team of experts. Submit your consultation, receive personalized advice, and navigate mental health challenges with guidance from qualified professionals."),
  ];
}
