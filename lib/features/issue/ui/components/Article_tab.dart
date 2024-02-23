import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/styles/styles.dart';

class ArticleTab extends StatelessWidget {
  const ArticleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 27.h,
          ),
          Text("What is schizophrenia?", style: Styles.style24whiteBold),
          SizedBox(
            height: 10.h,
          ),
          Text(
            """Schizophrenia is a complicated mental health problem related to psychosis.\nThere's lots of misconceptions about it. Even mental health professionals don't all agree about it. But the reality is that about 1 in every 100 people get this diagnosis at some point in their life.""",
            style: TextStyle(
                height: 2,
                letterSpacing: 0.50,
                fontSize: 16.sp,
                color: const Color(0xffBEBEBE)),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text("Symptoms of schizophrenia", style: Styles.style24whiteBold),
          SizedBox(
            height: 10.h,
          ),
          const Text(
            """Many experiences and behaviours can be part of schizophrenia. They can start suddenly, or they might develop gradually over time. Each person's experience is unique. A doctor might suggest you have schizophrenia if you experience some of the following:""",
            style: TextStyle(
                height: 2,
                letterSpacing: 0.50,
                fontSize: 16,
                color: Color(0xffBEBEBE)),
          ),
          Text(
            """\u2022 a lack of interest in things\n\u2022 feeling disconnected from your emotions\n\u2022 difficulty concentrating\n\u2022 wanting to avoid people\n\u2022 hallucinations, such as hearing voices or seeing things others don't\n\u2022 delusions (strong beliefs that others don't share), including paranoid delusions\n\u2022 disorganised thinking and speech\n\u2022 not wanting to look after yourself.\n\u2022 Hallucinations and delusions are types of psychosis.""",
            style: TextStyle(
                height: 2,
                letterSpacing: 0.50,
                fontSize: 16.sp,
                color: const Color(0xffBEBEBE)),
          )
        ],
      ),
    );
  }
}
