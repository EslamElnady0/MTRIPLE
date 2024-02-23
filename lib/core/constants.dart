import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/Setting_Screen/screens/setting_screen.dart';
import 'package:mtriple/features/home/ui/components/post_widget.dart';
import 'package:mtriple/features/home/ui/screens/issues_tab.dart';
import 'package:mtriple/features/home/ui/screens/posts_tab.dart';
import 'package:mtriple/features/issue/ui/components/Article_tab.dart';
import 'package:mtriple/features/issue/ui/components/Consultation_tab.dart';
import 'package:mtriple/features/issue/ui/components/Doctor_Widget.dart';
import 'package:mtriple/features/issue/ui/components/Video_tab.dart';
import 'package:mtriple/features/onBoarding/data/onboarding_model.dart';
import 'package:mtriple/features/relax-breathing/ui/screens/relax_breathing_screen.dart';

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

  static List<Widget> tabs = [
    const IssueTab(),
    const RelaxBreathingScreen(),
    const PostsTab(),
    const SettingScreen()
  ];
  static List<Widget> doctors = [
    const DoctorWidget(
      imagePath: "assets/images/dr ahmed.png",
      name: "DR. Ahmed",
    ),
    const DoctorWidget(
      imagePath: "assets/images/dr ali.png",
      name: "DR. Ali",
    ),
    const DoctorWidget(
      imagePath: "assets/images/dr mohamed.png",
      name: "DR. Mohamed",
    ),
    const DoctorWidget(
      imagePath: "assets/images/dr noah.png",
      name: "DR. Noah",
    ),
  ];

  static List<PostWidget> posts = [
    PostWidget(
      imagePath: "assets/images/profile1.png",
      name: "Heisenberg",
      post:
          """"Today, I want to remind everyone that it's okay to prioritize your mental health. Take breaks when you need them, and don't hesitate to ask for support.” \n#SelfCare \n#MentalHealthMatters""",
    ),
    PostWidget(
      imagePath: "assets/images/batman.png",
      name: "anabatman",
      post:
          """"Let's start a conversation: What's one self-care practice that helps you when you're feeling overwhelmed? Share your tips and tricks with the community! \n#SelfCareSunday \n#MentalWellness""",
    ),
    PostWidget(
      imagePath: "assets/images/profile1.png",
      name: "Heisenberg",
      post:
          """"Today, I want to remind everyone that it's okay to prioritize your mental health. Take breaks when you need them, and don't hesitate to ask for support.” \n#SelfCare \n#MentalHealthMatters""",
    ),
    PostWidget(
      imagePath: "assets/images/batman.png",
      name: "anabatman",
      post:
          """"Let's start a conversation: What's one self-care practice that helps you when you're feeling overwhelmed? Share your tips and tricks with the community! \n#SelfCareSunday \n#MentalWellness""",
    ),
    PostWidget(
      imagePath: "assets/images/profile1.png",
      name: "Heisenberg",
      post:
          """"Today, I want to remind everyone that it's okay to prioritize your mental health. Take breaks when you need them, and don't hesitate to ask for support.” \n#SelfCare \n#MentalHealthMatters""",
    ),
    PostWidget(
      imagePath: "assets/images/batman.png",
      name: "anabatman",
      post:
          """"Let's start a conversation: What's one self-care practice that helps you when you're feeling overwhelmed? Share your tips and tricks with the community! \n#SelfCareSunday \n#MentalWellness""",
    ),
    PostWidget(
      imagePath: "assets/images/profile1.png",
      name: "Heisenberg",
      post:
          """"Today, I want to remind everyone that it's okay to prioritize your mental health. Take breaks when you need them, and don't hesitate to ask for support.” \n#SelfCare \n#MentalHealthMatters""",
    ),
    PostWidget(
      imagePath: "assets/images/batman.png",
      name: "anabatman",
      post:
          """"Let's start a conversation: What's one self-care practice that helps you when you're feeling overwhelmed? Share your tips and tricks with the community! \n#SelfCareSunday \n#MentalWellness""",
    ),
  ];

  static List<Widget> tabControllerTabs = [
    const Text("Articles"),
    const Text("Video"),
    const Text("Consultation"),
  ];

  static List<Widget> bodyTabs = [
    const ArticleTab(),
    const VideoTab(),
    const ConsultationTab()
  ];
}
