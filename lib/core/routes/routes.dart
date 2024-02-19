import 'package:flutter/material.dart';
import 'package:mtriple/features/auth/ui/screens/auth_start_screen.dart';
import 'package:mtriple/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:mtriple/features/auth/ui/screens/login_screen.dart';
import 'package:mtriple/features/auth/ui/screens/nickname_screen.dart';
import 'package:mtriple/features/auth/ui/screens/signup_screen.dart';
import 'package:mtriple/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  static const String authStart = 'auth-start';
  static const String onBoarding = 'on-boarding';

  static const String login = 'login';
  static const String signUp = 'sign-up';
  static const String forgotPassword = 'forgot-password';
  static const String nickName = 'nickname';

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case authStart:
        return PageTransition(
            child: const AuthStartScreen(),
            type: PageTransitionType.rightToLeft);
      case onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LogInScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case forgotPassword:
        return PageTransition(
            child: const ForgotPasswordScreen(), type: PageTransitionType.fade);
      case nickName:
        return PageTransition(
            child: const NickNameScreen(),
            type: PageTransitionType.rightToLeftWithFade);
      default:
        return MaterialPageRoute(
            builder: (_) => const Center(child: Text("no route provided")));
    }
  }
}
