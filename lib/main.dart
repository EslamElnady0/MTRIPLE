import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/Profile_screen/screens/profile_screen.dart';

import 'core/Routes/routes.dart';
import 'core/themes/themes.dart';
import 'features/Breathing_details/ui/screens/breathPower_screen.dart';
import 'features/Setting_Screen/screens/setting_screen.dart';
import 'features/relax-breathing/ui/screens/relax-breathing_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  const RelaxBreathingScreen(),
          theme: AppTheme.darkTheme,

         onGenerateRoute: Routes.onGenerateRoutes,
        );
      },
    );
  }
}
