import 'package:flutter/material.dart';
import 'package:mtriple/core/styles/styles.dart';

import '../../../../core/colors/colors.dart';

PreferredSizeWidget appBarDefaultTheme({
  required BuildContext context,
  required String title,
  List<Widget>? actions,
}) =>
    AppBar(
      elevation: 0.0,
      centerTitle: false,
      titleTextStyle: Styles.style16whiteBold,
      backgroundColor: MainColors.black,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: MainColors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: Styles.style16whiteBold,
      ),
      titleSpacing: 0.0,
      actions: actions,
    );
