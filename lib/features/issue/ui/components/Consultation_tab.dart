import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/constants.dart';
import 'package:mtriple/core/styles/styles.dart';

class ConsultationTab extends StatelessWidget {
  const ConsultationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Access immediate, specialized psychological support from our team of experts. Submit your consultation, receive personalized advice, and navigate mental health challenges with guidance from qualified professionals.",
            style: Styles.style12white,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text("Specialists", style: Styles.style24whiteBold),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Constants.doctors[0],
              const Spacer(),
              Constants.doctors[1],
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Constants.doctors[2],
              const Spacer(),
              Constants.doctors[3],
            ],
          ),
          // GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     itemBuilder: (context, index) {
          //       return Doctors[index];
          //     },)
        ],
      ),
    );
  }
}
