import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/onBoarding/data/onboarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const OnBoardingItem({
    super.key,
    required this.onboardingModel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: SvgPicture.asset(
            onboardingModel.image,
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 340.h,
          child: Column(
            children: [
              Text(
                onboardingModel.text,
                style: Styles.style36greenBold,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(onboardingModel.desc,
                  textAlign: TextAlign.center,
                  style: Styles.style14white
                      .copyWith(color: const Color(0xffd2d2d2))),
            ],
          ),
        )
      ],
    );
  }
}
