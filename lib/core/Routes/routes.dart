import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/Breathing_details/ui/screens/breathPower_screen.dart';
import '../../features/Profile_screen/screens/profile_screen.dart';
import '../../features/Setting_Screen/screens/setting_screen.dart';
import '../../features/relax-breathing/ui/screens/relax-breathing_screen.dart';

class Routes {
  static const String relaxBreathingScreen = 'relax-breathing_screen';
  static const String breath = 'breathPower_screen';

  static const String setting = 'setting_screen';
  static const String account = 'profile_screen.dart';
  static const String authStart = 'auth-start';


  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case relaxBreathingScreen:
        return PageTransition(
            child: const RelaxBreathingScreen(),
            type: PageTransitionType.rightToLeft);
      case breath:
        return MaterialPageRoute(builder: (_) => const BreathPowerScreen());
      case setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case account:
        return MaterialPageRoute(builder: (_) =>  ProfileScreen());

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
    Navigator.pushNamed(context,routes
         );
