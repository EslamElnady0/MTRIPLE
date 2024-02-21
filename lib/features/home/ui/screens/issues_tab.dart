import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/home/ui/components/issue_widget.dart';

class IssueTab extends StatelessWidget {
  const IssueTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
              ),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                fillColor: const Color(0xff3B453B),
                filled: true,
                hintText: "Find the solution to your problem",
                hintStyle: TextStyle(
                  color: const Color(0xFFC6C6C6),
                  fontSize: 14.sp,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: const BorderSide(color: Colors.white)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 35.r,
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              "Explore the importance of mental health and common \n psychological  issues in this introductory screen.",
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8.h,
            ),
            IssueWidget(
                title: "Anger",
                description:
                    "Explains what anger is, and how to deal with it in a constructive and healthy way.",
                imagePath: "assets/images/Anger.png"),
            IssueWidget(
                title: "Anxiety and panic\nattacks",
                description:
                    "Explains anxiety and panic attacks, including possible causes and how you can access treatment",
                imagePath: "assets/images/anxiety.png"),
            IssueWidget(
                title: "Bipolar disorder",
                description:
                    "Explains what bipolar disorder is, what kinds of treatment are available, and how you can help yourself cope.",
                imagePath: "assets/images/Bipolar.png"),
            IssueWidget(
                title: "BBD",
                description:
                    "Explains what body dysmorphic disorder (BDD) is, possible causes and how you can access treatment",
                imagePath: "assets/images/BBD.png"),
            IssueWidget(
                title: "BPD",
                description:
                    "Explains borderline personality disorder (BPD), also known as emotionally unstable personality disorder (EUPD).",
                imagePath: "assets/images/BPD.png"),
            IssueWidget(
                title: "Depression",
                description:
                    "Explains depression, including possible causes and how you can access treatment and support.",
                imagePath: "assets/images/Depression.png"),
            IssueWidget(
                title: "Dissociation and\ndissociative disorders",
                description: "Explains dissociative disorders",
                imagePath: "assets/images/Dis.png"),
            IssueWidget(
                title: "Hearing voices",
                description:
                    "Explains what it is like to hear voices, where to go for help if you need it.",
                imagePath: "assets/images/hearing.png"),
            IssueWidget(
                title: "Hypomania and\nmania",
                description:
                    "Explains hypomania and mania, including possible causes and how you can access treatment.",
                imagePath: "assets/images/hypo.png"),
            IssueWidget(
                title: "Loneliness",
                description:
                    "Explains loneliness, giving practical suggestions for what you can do and where you can go for support.",
                imagePath: "assets/images/loneliness.png"),
            IssueWidget(
                title: "OCR",
                description:
                    "Explains obsessive-compulsive disorder (OCD), including possible causes and how you can access treatment",
                imagePath: "assets/images/OCR.png"),
            IssueWidget(
                title: "Panic attacks",
                description:
                    "Explains what panic attacks are, including possible causes and how you can access treatment and support.",
                imagePath: "assets/images/panic.png"),
            IssueWidget(
                title: "Paranoia",
                description:
                    "Explains paranoia, including possible causes and how you can access treatment and support.",
                imagePath: "assets/images/paranoia.png"),
            IssueWidget(
                title: "Personality disorders",
                description:
                    "Explains personality disorders, including possible causes and how you can access treatment .",
                imagePath: "assets/images/personality disorders.png"),
            IssueWidget(
                title: "Phobias",
                description:
                    "Explains phobias, including possible causes and how you can access treatment and support. ",
                imagePath: "assets/images/phobia.png"),
            IssueWidget(
                title: "PTSD",
                description:
                    "Explains what post-traumatic stress disorder (PTSD) and complex PTSD are, and provides information on how you can access treatment.",
                imagePath: "assets/images/PTSD.png"),
            IssueWidget(
                title: "Psychosis",
                description:
                    "Explains what psychosis is, including possible causes and how you can access treatment and support. ",
                imagePath: "assets/images/Psychosis.png"),
            IssueWidget(
                title: "Addiction",
                description:
                    "Learn how recreational drugs and alcohol can affect your mental health, including if you take psychiatric medication.",
                imagePath: "assets/images/Addiction.png"),
            IssueWidget(
                title: "Schizophrenia",
                description:
                    "Explains schizophrenia, including possible causes and how you can access treatment and support.",
                imagePath: "assets/images/Schizophrenia.png"),
            IssueWidget(
                title: "SAD",
                description:
                    "Explains seasonal affective disorder, including possible causes and how you can access treatment and support.",
                imagePath: "assets/images/SAD.png"),
            IssueWidget(
                title: "Stress",
                description:
                    "Explains what stress is, what might cause it and how it can affect you.",
                imagePath: "assets/images/Stress.png"),
            IssueWidget(
                title: "Suicidal",
                description:
                    "Find information to help you cope after a suicide attempt - including how you may feel, what might happen after wards.",
                imagePath: "assets/images/Suicidal.png"),
          ],
        ),
      ),
    );
  }
}
