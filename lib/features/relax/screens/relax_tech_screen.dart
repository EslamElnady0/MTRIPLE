import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/styles/styles.dart';
import 'package:mtriple/features/Breathing_details/ui/components/app_bar_widget.dart';
import 'package:mtriple/features/relax/cubit/timer_cubit.dart';

class RelaxTechScreen extends StatefulWidget {
  const RelaxTechScreen({super.key});

  @override
  State<RelaxTechScreen> createState() => _RelaxTechScreenState();
}

class _RelaxTechScreenState extends State<RelaxTechScreen> {
  late Timer timer;
  int relaxSeconds = 60 * 15;
  int relaxCounter = 60 * 15;
  bool isPaused = false;

  void startRelaxingTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (relaxCounter >= 0) {
        context.read<TimerCubit>().duration = Duration(seconds: relaxCounter);
        relaxCounter--;
        context.read<TimerCubit>().updateTimer();
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    startRelaxingTimer();

    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDefaultTheme(
        context: context,
        title: "Relaxation Techniques",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "This screen is your safe space to connect with others, share your experiences, and seek support.",
              style: Styles.style12white,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.h,
            ),
            BlocBuilder<TimerCubit, TimerState>(
              builder: (context, state) {
                return SizedBox(
                  height: 216.h,
                  width: 216.w,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircularProgressIndicator(
                          backgroundColor: Colors.grey.shade300,
                          value: (relaxCounter / relaxSeconds),
                          strokeWidth: 25,
                          color: MainColors.green),
                      Center(
                        child: Text(
                          "${context.read<TimerCubit>().duration.inMinutes.remainder(60).toString().padLeft(2, "0")}:${context.read<TimerCubit>().duration.inSeconds.remainder(60).toString().padLeft(2, "0")}",
                          style: Styles.style40whiteBold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              "assets/images/meditation 1.png",
              height: 192.h,
              width: 192.w,
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 9,
                ),
                GestureDetector(
                  onTap: () {
                    isPaused = !isPaused;
                    if (isPaused) {
                      timer.cancel();
                      context.read<TimerCubit>().updateTimer();
                    } else {
                      startRelaxingTimer();
                      context.read<TimerCubit>().updateTimer();
                    }
                  },
                  child: BlocBuilder<TimerCubit, TimerState>(
                    builder: (context, state) {
                      return CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 45.r,
                        child: Icon(
                          isPaused ? Icons.play_arrow : Icons.pause,
                          color: MainColors.greenLoad,
                          size: 40.r,
                        ),
                      );
                    },
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                OutlinedButton(
                  onPressed: () {
                    relaxCounter = 15 * 60;
                    timer.cancel;
                  },
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(15.r),
                      side: const BorderSide(color: MainColors.greenLoad),
                      shape: const CircleBorder(
                          side: BorderSide(color: MainColors.greenLoad)),
                      foregroundColor: MainColors.greenLoad),
                  child: const Icon(FontAwesomeIcons.repeat),
                ),
                const Spacer(
                  flex: 2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
