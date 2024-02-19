import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/themes/themes.dart';

import 'package:mtriple/features/splash/ui/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          theme: AppTheme.darkTheme,
          onGenerateRoute: Routes.onGenerateRoutes,
        );
      },
    );
  }
}
