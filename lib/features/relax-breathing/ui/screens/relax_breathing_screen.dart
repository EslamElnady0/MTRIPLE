import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';

import '../../../../core/styles/styles.dart';
import '../components/relax-breathing-stack.dart';

class RelaxBreathingScreen extends StatelessWidget {
  const RelaxBreathingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Relaxation Techniques & Breathing Power',
                style: Styles.subTitle12,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomStackAndButton(
                onTap: () {
                  navigateTo(context, Routes.relax);
                },
                image: 'assets/images/meditation.png',
                text: 'Relaxation Techniques',
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                  width: 190.w,
                  child: Divider(
                    color: Colors.white54,
                    height: 1.h,
                  )),
              SizedBox(
                height: 20.h,
              ),
              CustomStackAndButton(
                onTap: () {
                  navigateTo(context, Routes.breath);
                },
                image: 'assets/images/breath.png',
                text: 'Breathing Power',
              ),
              SizedBox(
                height: 100.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
