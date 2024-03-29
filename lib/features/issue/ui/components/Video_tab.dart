import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/issue/ui/components/video_widget.dart';

class VideoTab extends StatelessWidget {
  const VideoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          const VideoWidget(
              title:
                  "Hearing voices, paranoia and schizophrenia | Miles's Mental Health Story | Mind",
              imagePath: "assets/images/first vid.png"),
          const VideoWidget(
              title: "Schizophrenia | Talking about mental health - Episode 18",
              imagePath: "assets/images/second vid.png")
        ],
      ),
    );
  }
}
