import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/Breathing_details/ui/components/app_bar_widget.dart';

import '../../../../core/styles/styles.dart';
import '../components/custom_square_slider.dart';

class BreathPowerScreen extends StatelessWidget {
  const BreathPowerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarDefaultTheme(context: context, title: 'Breathing Power'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const Divider(),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    'This feature is designed to help you harness the transformative power of your breath for mental well-being.',
                    style: Styles.subTitle12,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'IN',
                      style: Styles.style16whiteBold,
                    ),
                    Text(
                      'OUT',
                      style: Styles.style16whiteBold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomSquareSlider(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
