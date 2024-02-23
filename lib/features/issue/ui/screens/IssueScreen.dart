import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/constants.dart';
import 'package:mtriple/core/styles/styles.dart';

class IssueScreen extends StatefulWidget {
  const IssueScreen({super.key});

  @override
  State<IssueScreen> createState() => _IssueScreenState();
}

class _IssueScreenState extends State<IssueScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.5.w),
        child: Column(
          children: [
            SizedBox(
              height: 58.h,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                    width: double.infinity,
                    height: 293.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        "assets/images/Schizophrenia-HD.png",
                        height: 293.h,
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                  top: 10.h,
                  left: 30.w,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.xmark,
                        color: MainColors.white,
                      )),
                ),
                Center(
                  child: Text(
                    "Schizophrenia",
                    style: Styles.style40whiteBold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: DefaultTabController(
                length: Constants.bodyTabs.length,
                child: Column(
                  children: [
                    TabBar(
                      tabs: Constants.tabControllerTabs,
                      indicatorColor: const Color(0xff32E22F),
                      labelPadding: EdgeInsets.all(8.r),
                      indicatorPadding: EdgeInsets.symmetric(horizontal: 5.w),
                      indicatorWeight: 2,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: Styles.style16whiteBold
                          .copyWith(color: MainColors.greenLoad),
                      labelColor: const Color(0xff32E22F),
                      unselectedLabelColor: Colors.white.withOpacity(0.5),
                      dividerColor: Colors.transparent,
                      onTap: (index) {
                        selectedIndex = index;
                        setState(() {});
                      },
                      isScrollable: false,
                    ),
                    Expanded(child: TabBarView(children: Constants.bodyTabs))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
