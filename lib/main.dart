import 'package:flutter/material.dart';
import 'package:mtriple/ui/home_screen/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: TextTheme(
            bodySmall: TextStyle(
              color: Color(0xFFD1D1D1),
              fontSize: 14,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.24,
            ),
            titleMedium: TextStyle(
              color: Color(0xFF0E0F0E),
              fontSize: 20,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              height: 0,
              letterSpacing: -0.40,
            ),
            bodyMedium: TextStyle(
              color: Color(0xFF393939),
              fontSize: 14,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.24,
            )),
      ),
    );
  }
}
