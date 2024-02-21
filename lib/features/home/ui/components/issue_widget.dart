import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class IssueWidget extends StatelessWidget {
  String title;
  String description;
  String imagePath;

  IssueWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      color: const Color(0xffD8FFD7),
      child: SizedBox(
        width: 339.w,
        height: 138.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    width: 169.w,
                    height: 65.h,
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              imagePath,
              width: 140.w,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
