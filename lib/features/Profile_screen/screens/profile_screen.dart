import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtriple/features/Breathing_details/ui/components/app_bar_widget.dart';

import '../../../../core/styles/styles.dart';
import '../../../core/colors/colors.dart';
import '../../relax-breathing/ui/components/custom_text_button.dart';
import '../components/my_posts_widget.dart';
import '../components/text_edit_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var firstController = TextEditingController();

  var lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    firstController.text = ' Adel';
    lastController.text = ' Gabr';
    return Scaffold(
      appBar: appBarDefaultTheme(context: context, title: 'ِAccount'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Information about your account',
                style: Styles.style16whiteBold,
                textAlign: TextAlign.start,
              ),
              Text(
                'You can manage and modify your account on this page',
                style: Styles.subTitle12,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/circle.png',
                      height: 64.h,
                      width: 64.w,
                    ),
                    Positioned(
                        bottom: 20.h,
                        left: 23.w,
                        child: const Icon(
                          Icons.camera_alt,
                          color: MainColors.white,
                          size: 18,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: Text(
                'Adel Gabr',
                style: Styles.style16whiteBold,
              )),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  defaultTextFormFeild(context,
                      hint: firstController.text,
                      keyboardType: TextInputType.text,
                      controller: firstController,
                      suffix: const Icon(
                        Icons.perm_identity_sharp,
                        color: MainColors.white,
                      )),
                  defaultTextFormFeild(context,
                      hint: lastController.text,
                      keyboardType: TextInputType.text,
                      controller: lastController,
                      suffix: const Icon(
                        Icons.perm_identity_sharp,
                        color: MainColors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomButton(
                text: 'SAVE',
                raduis: 16.r,
                color: MainColors.green,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'My posts',
                style: Styles.style16whiteBold,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 700.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => myPosts(context: context),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 20.h,
                        ),
                    itemCount: 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
