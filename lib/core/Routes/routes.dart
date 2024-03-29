import 'package:flutter/material.dart';
import 'package:mtriple/features/Profile_screen/screens/edit_post_screen.dart';
import 'package:mtriple/features/auth/ui/screens/auth_start_screen.dart';
import 'package:mtriple/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:mtriple/features/auth/ui/screens/login_screen.dart';
import 'package:mtriple/features/auth/ui/screens/nickname_screen.dart';
import 'package:mtriple/features/auth/ui/screens/signup_screen.dart';
import 'package:mtriple/features/home/ui/screens/add_post_screen.dart';
import 'package:mtriple/features/home/ui/screens/home_screen.dart';
import 'package:mtriple/features/issue/ui/screens/IssueScreen.dart';
import 'package:mtriple/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:mtriple/features/relax-breathing/ui/screens/relax_breathing_screen.dart';
import 'package:mtriple/features/relax/screens/relax_tech_screen.dart';
import 'package:mtriple/features/splash/ui/screens/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/Breathing_details/ui/screens/breathPower_screen.dart';
import '../../features/Profile_screen/screens/profile_screen.dart';
import '../../features/Setting_Screen/screens/setting_screen.dart';

class Routes {
  static const String relaxBreathingScreen = 'relax-breathing_screen';
  static const String breath = 'breathPower_screen';

  static const String setting = 'setting_screen';
  static const String account = 'profile_screen.dart';
  static const String authStart = 'auth-start';
  static const String home = 'home';
  static const String splash = 'splash';
  static const String onBoarding = 'on-boarding';
  static const String login = 'login';
  static const String signUp = 'sign-up';
  static const String forgotPassword = 'forgot-password';
  static const String nickName = 'nickname';
  static const String issue = 'issue';
  static const String relax = 'relax';
  static const String addPost = 'add-post';
  static const String editPost = 'edit-post';

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case relaxBreathingScreen:
        return PageTransition(
            child: const RelaxBreathingScreen(),
            type: PageTransitionType.rightToLeft);
      case breath:
        return MaterialPageRoute(builder: (_) => const BreathPowerScreen());
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case account:
        return PageTransition(
            child: const ProfileScreen(), type: PageTransitionType.fade);
      case authStart:
        return PageTransition(
            child: const AuthStartScreen(),
            type: PageTransitionType.rightToLeft);
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LogInScreen());
      case issue:
        return MaterialPageRoute(builder: (_) => const IssueScreen());
      case relax:
        return MaterialPageRoute(builder: (_) => const RelaxTechScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case addPost:
        return PageTransition(
            child: const AddPostScreen(), type: PageTransitionType.fade);
      case editPost:
        return PageTransition(
            child: const EditPostScreen(), type: PageTransitionType.fade);
      case forgotPassword:
        return PageTransition(
            child: const ForgotPasswordScreen(), type: PageTransitionType.fade);
      case nickName:
        return PageTransition(
            child: const NickNameScreen(),
            type: PageTransitionType.rightToLeftWithFade);
      case home:
        return PageTransition(
            child: const HomeScreen(), type: PageTransitionType.rightToLeft);

      default:
        return MaterialPageRoute(
            builder: (_) => const Center(child: Text("no route provided")));
    }
  }
}

Future navigateTo(
  BuildContext context,
  String routes,
) =>
    Navigator.pushNamed(context, routes);
