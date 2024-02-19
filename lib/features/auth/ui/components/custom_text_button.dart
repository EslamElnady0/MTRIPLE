import 'package:flutter/material.dart';
import 'package:mtriple/core/styles/styles.dart';

class CustomTextButtton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomTextButtton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            Text(
              text,
              style: Styles.style14whiteSemiBold,
            ),
          ],
        ));
  }
}
