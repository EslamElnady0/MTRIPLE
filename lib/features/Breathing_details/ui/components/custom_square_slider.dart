import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/colors/colors.dart';
import '../../../../core/styles/styles.dart';

class CustomSquareSlider extends StatefulWidget {
  @override
  State<CustomSquareSlider> createState() => _CustomSquareSliderState();
}

class _CustomSquareSliderState extends State<CustomSquareSlider>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _secondController;
  late AnimationController _thirdController;
  late Animation<double> _animation;
  late Animation<double> _secondAnimation;
  late Animation<double> _thirdAnimation;

  bool isRed = false;
  bool isPause = false;
  bool firstFinish = false;
  bool secondFinish = false;
  bool thirdFinish = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _animation = Tween<double>(begin: 0.0, end: 1).animate(_controller);

    _secondController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _thirdController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    _secondAnimation =
        Tween<double>(begin: 0.0, end: 1).animate(_secondController);

    _thirdAnimation =
        Tween<double>(begin: 0.0, end: 1).animate(_thirdController);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'A',
                style: Styles.style16whiteBold,
              ),
              Text(
                'B',
                style: Styles.style16whiteBold,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Stack(
          children: [
            SizedBox(
              height: 295.h,
              width: 320.w,
            ),
            AnimatedBuilder(
              animation: _thirdAnimation,
              builder: (context, child) {
                Color startColor = Colors.red;
                Color endColor1 = Colors.red;

                Color endColor2 = Colors.red.shade900;

                Color interpolatedColor1 = Color.lerp(startColor, endColor1, _thirdAnimation.value)!;

                Color interpolatedColor2 = Color.lerp(endColor1, endColor2, _thirdAnimation.value)!;

                return Positioned(
                right: 14.w,
                bottom: 0,
                top: 12.h,
                child: Container(
                  width: 10.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r)),
                    gradient:  SweepGradient(
                      colors: _secondAnimation.isCompleted ?
                      [ interpolatedColor2, interpolatedColor1] :  [ MainColors.white, MainColors.white] ,

                    ),
                  ),
                ),
              );
              },
            ),
              AnimatedBuilder(
              animation: _secondAnimation,
    builder: (context, child) {
    Color startColor = Colors.white;
    Color endColor1 = MainColors.white;
    Color startColor2 = MainColors.greenLoad;
    Color endColor2 = Colors.red;

    Color interpolatedColor1 = Color.lerp(startColor, endColor1, _secondAnimation.value)!;

    Color interpolatedColor2 = Color.lerp(startColor2, endColor2, _secondAnimation.value)!;

    return Positioned(
    left: 14.w,
    top: 12.h,
    child: Container(
    height: 10.h,
    width: 300.w,
    decoration: BoxDecoration(
    gradient: LinearGradient(

    colors: _controller.isCompleted ?
    [ interpolatedColor1, interpolatedColor2] :  [ MainColors.white, MainColors.white] ,
    ),
    ),
    ),
    );
    },
    ),

            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) => Positioned(
                left: 14.w,
                bottom: 0,
                top: 12.h,
                child: Container(
                  width: 10.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16.r),
                        bottomRight: Radius.circular(16.r)),
                    color: _getAnimatedColor(),
                  ),
                ),
              ),
            ),

// first
            _controller.isCompleted ? Container()
                :   AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Positioned(
                  left: 0.w,
                  bottom: 265.h * _animation.value,
                  child: Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: MainColors.greenLoad,
                    ),
                  ),
                );
              },
            ),
            //  second
          _secondController.isCompleted ?  Container() :
        secondFinish ?   AnimatedBuilder(
              animation: _secondAnimation,
              builder: (context, child) {
                return Positioned(
                  left: 295.w * _secondAnimation.value,
                  bottom: 265.h,
                  child: Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isRed ? Colors.red.shade300 : MainColors.greenLoad,
                    ),
                  ),
                );
              },
            ) : Container(),
            // third
        thirdFinish ?   AnimatedBuilder(
              animation: _thirdAnimation,
              builder: (context, child) {
                return Positioned(
                  left: 298.w,
                  top: 267.h * _thirdAnimation.value,
                  child: Container(
                    width: 35.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isRed ? Colors.red.shade900 : MainColors.greenLoad,
                    ),
                  ),
                );
              },
            ) : Container(),
            Center(child: Image.asset('assets/images/lungs 1.png')),
          ],
        ),
        SizedBox(
          height: 60.h,
        ),
        !isPause
            ? InkWell(
                onTap: () {
                  _controller.forward().whenComplete(() {
                   setState(() {
                     firstFinish = true ;
                     secondFinish = true ;
                     thirdFinish = false ;
                   });
                    _secondController.forward().then((value) {
                      setState(() {


                        isRed = true;
                      });
                    }).whenComplete(() {
                      setState(() {
                        firstFinish = false ;
                        secondFinish = false ;
                        thirdFinish = true ;
                      });
                      _thirdController.forward().then((value){
                        setState(() {
                          isPause = !isPause;
                          thirdFinish = false ;
                          _controller.reset();
                          _secondController.reset();
                          _thirdController.reset();
                        });
                      });
                    });
                  });
                  setState(() {
                    isPause = !isPause;
                  });
                },
                child: SvgPicture.asset('assets/images/pause.svg'))
            : Container(),
        isPause
            ? InkWell(
                onTap: () {
                  _controller.stop();
                  _secondController.stop();
                  _thirdController.stop();

                  setState(() {
                    isPause = !isPause;
                  });
                },
                child: SvgPicture.asset('assets/images/continue.svg'))
            : Container(),

        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }

  Color? _getAnimatedColor() {
    return ColorTween(
      begin: MainColors.white,
      end: MainColors.greenLoad,
    ).transform(_animation.value);
  }


  @override
  void dispose() {
    _controller.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    super.dispose();
  }
}
