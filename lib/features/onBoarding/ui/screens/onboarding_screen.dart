import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/constants.dart';
import 'package:mtriple/core/routes/routes.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/auth/ui/components/custom_auth_button.dart';
import 'package:mtriple/features/onBoarding/ui/components/page_view_item.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(
              height: 48.36.h,
            ),
            Image.asset("assets/images/small mtriple.png"),
            SizedBox(
              height: 45.h,
            ),
            SizedBox(
              height: 465.h,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  controller: _pageController,
                  itemCount: Constants.onBoardingScreens.length,
                  itemBuilder: (context, index) {
                    return OnBoardingItem(
                      onboardingModel: Constants.onBoardingScreens[index],
                    );
                  }),
            ),
            SizedBox(
              height: 25.h,
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: Constants.onBoardingScreens.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: MainColors.green,
                dotColor: Colors.grey,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 47.h,
            ),
            CustomAuthButton(
              raduis: 16.r,
              text: currentIndex == 3 ? "Back" : "Next",
              onTap: () {
                if (currentIndex == 3) {
                  setState(() {
                    currentIndex = 0;
                  });
                  _pageController.animateToPage(
                    currentIndex,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeIn,
                  );
                } else {
                  setState(() {
                    currentIndex++;
                  });
                  _pageController.animateToPage(
                    currentIndex,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeIn,
                  );
                }
              },
            ),
            SizedBox(
              height: 17.h,
            ),
            CustomAuthButton(
              color: Colors.transparent,
              border: Border.all(color: MainColors.green, width: 1.5),
              raduis: 16.r,
              onTap: () async {
                SharedPreferences perfs = await SharedPreferences.getInstance();
                await perfs.setInt('onBoard', 1);
                if (context.mounted) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    Routes.authStart,
                    (route) => false,
                  );
                }
              },
              text: currentIndex == 3 ? "Next" : "Skip",
              style: Styles.style20whiteBold.copyWith(color: MainColors.green),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
