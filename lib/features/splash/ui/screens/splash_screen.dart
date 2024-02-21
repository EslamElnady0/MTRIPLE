import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mtriple/features/auth/ui/screens/auth_start_screen.dart';
import 'package:mtriple/features/home/ui/screens/home_screen.dart';
import 'package:mtriple/features/onBoarding/ui/screens/onboarding_screen.dart';
import 'package:mtriple/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  User? user;

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          isViewed == 0 || isViewed == null
              ? const OnBoardingScreen()
              : user == null
                  ? const AuthStartScreen()
                  : HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser;
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushReplacement(
              context,
              _createRoute(),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/splash logo.png",
          height: 130.h,
        ),
      ),
    );
  }
}
