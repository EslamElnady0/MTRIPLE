import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/core/routes/routes.dart';

class IssueWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const IssueWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.issue);
      },
      child: Container(
        width: 338.w,
        height: 136.h,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: const Color(0xffD8FFD7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w, top: 10.w),
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
              height: 140.h,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
