import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/themes/themes.dart';
import 'package:mtriple/features/auth/ui/screens/auth_start_screen.dart';
import 'package:mtriple/features/auth/ui/screens/forgot_password_screen.dart';
import 'package:mtriple/features/auth/ui/screens/login_screen.dart';
import 'package:mtriple/features/auth/ui/screens/nickname_screen.dart';
import 'package:mtriple/features/auth/ui/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const AuthStartScreen(),
          theme: AppTheme.darkTheme,
          routes: {
            Routes.authStart: (_) => const AuthStartScreen(),
            Routes.login: (_) => const LogInScreen(),
            Routes.signUp: (_) => const SignUpScreen(),
            Routes.forgotPassword: (_) => const ForgotPasswordScreen(),
            Routes.nickName: (_) => const NickNameScreen(),
          },
        );
      },
    );
  }
}
