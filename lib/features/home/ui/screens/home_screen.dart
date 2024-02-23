import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mtriple/core/colors/colors.dart';
import 'package:mtriple/core/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();

  int selectedIndex = 0;
  late NotchBottomBarController _navBarController;

  @override
  void initState() {
    _navBarController = NotchBottomBarController(index: selectedIndex);
    super.initState();
  }

  @override
  void dispose() {
    _navBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MainColors.black,
        centerTitle: true,
        title: SvgPicture.asset(
          "assets/images/logo.svg",
          width: 155.84.w,
          height: 20.27.h,
        ),
      ),
      body: Constants.tabs[selectedIndex],
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchColor: MainColors.green,
        color: MainColors.green,
        notchBottomBarController: _navBarController,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: ImageIcon(AssetImage("assets/images/first_tab.png"),
                color: Colors.black),
            activeItem: ImageIcon(
              AssetImage("assets/images/first_tab.png"),
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: ImageIcon(AssetImage("assets/images/second_tab.png"),
                color: Colors.black),
            activeItem: ImageIcon(
              AssetImage("assets/images/second_tab.png"),
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: ImageIcon(AssetImage("assets/images/third_tab.png"),
                color: Colors.black),
            activeItem: ImageIcon(
              AssetImage("assets/images/third_tab.png"),
              color: Colors.white,
            ),
          ),
          BottomBarItem(
            inActiveItem: ImageIcon(AssetImage("assets/images/fourth_tab.png"),
                color: Colors.black),
            activeItem: ImageIcon(
              AssetImage("assets/images/fourth_tab.png"),
              color: Colors.white,
            ),
          ),
        ],
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        kBottomRadius: 28.r,
        kIconSize: 24.r,
      ),
    );
  }
}
