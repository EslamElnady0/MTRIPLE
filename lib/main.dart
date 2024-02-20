import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/themes/themes.dart';
import 'package:mtriple/features/auth/data/cubits/sign%20in/signin_cubit.dart';
import 'package:mtriple/features/auth/data/cubits/sign%20up/signup_cubit.dart';
import 'package:mtriple/features/auth/ui/screens/signup_screen.dart';
import 'package:mtriple/features/splash/ui/screens/splash_screen.dart';
import 'package:mtriple/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

int? isViewed;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();

  isViewed = prefs.getInt('onBoard');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => SignupCubit()),
            BlocProvider(create: (context) => SigninCubit()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SignUpScreen(),
            theme: AppTheme.darkTheme,
            onGenerateRoute: Routes.onGenerateRoutes,
          ),
        );
      },
    );
  }
}
