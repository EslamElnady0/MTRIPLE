import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/constants.dart';

// ignore: must_be_immutable
class PostsTab extends StatelessWidget {
  const PostsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Text(
            "This screen is your safe space to connect with others, share your experiences, and seek support.",
            maxLines: 2,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Constants.posts[index];
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: const Color(0xff373737),
                    height: 36.h,
                    indent: 25.w,
                    endIndent: 25.w,
                  );
                },
                itemCount: Constants.posts.length),
          ),
        )
      ],
    );
  }
}
