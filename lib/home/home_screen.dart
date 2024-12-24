import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_bonfire/home/header_section.dart';
import 'package:stroll_bonfire/home/question_section.dart';
import 'package:stroll_bonfire/utils/app_colors.dart';
import 'package:stroll_bonfire/utils/app_images.dart';
import 'package:stroll_bonfire/home/question_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    bool isLargeScreen = width > 700;

    return Scaffold(
      backgroundColor: AppColors.bottomNavBarColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          isLargeScreen
              ? Row(
                  children: [
                    const HeaderSection(),
                    Expanded(
                      flex: 2,
                      child: buildLargeScreenContent(),
                    )
                  ],
                )
              : Stack(
                  children: [
                    const SafeArea(
                      child: HeaderSection(),
                    ),
                    buildMobileScreenContent()
                  ],
                ),
        ],
      ),
    );
  }

  Positioned buildMobileScreenContent() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: MediaQuery.of(context).size.width > 450
            ? 380.h
            : MediaQuery.of(context).size.width > 550
                ? 450.h
                : 360.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              const Color(0xFF000000),
              const Color(0xFF000000),
              const Color(0xFF000000),
              const Color(0xFF000000),
              const Color(0xFF000000),
              const Color(0xFF000000).withOpacity(0.9),
              const Color(0xFF000000).withOpacity(0.1),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const QuestionSection(),
              SizedBox(
                height: 9.h,
              ),
              Center(
                child: Text(
                  '"Mine is the peace in the morning."',
                  style: TextStyle(
                    color: AppColors.answerTextColor,
                    fontSize: 12.sp,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              const QuestionOptions(),
              SizedBox(
                height: 11.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pick your option.',
                        style: TextStyle(
                          color: AppColors.headerTextColor,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        'See who has a similar mind.',
                        style: TextStyle(
                          color: AppColors.headerTextColor,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.87.h,
                          horizontal: 12.8.w,
                        ),
                        width: 44.62.w,
                        height: 44.62.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.2,
                            color: AppColors.primaryColor,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          AppImages.microphone,
                          width: 18.14.w,
                          height: 25.92.h,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        width: 44.62.w,
                        height: 44.62.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: AppColors.primaryColor,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          size: 30.r,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildLargeScreenContent() {
    return Container(
      // height: 360.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            const Color(0xFF000000),
            const Color(0xFF000000).withOpacity(0.9),
            const Color(0xFF000000).withOpacity(0.1),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuestionSection(),
            SizedBox(
              height: 9.h,
            ),
            Center(
              child: Text(
                '"Mine is the peace in the morning."',
                style: TextStyle(
                  color: AppColors.answerTextColor,
                  fontSize: 7.sp,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            const QuestionOptions(),
            SizedBox(
              height: 11.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pick your option.',
                      style: TextStyle(
                        color: AppColors.headerTextColor,
                        fontSize: 6.sp,
                      ),
                    ),
                    Text(
                      'See who has a similar mind.',
                      style: TextStyle(
                        color: AppColors.headerTextColor,
                        fontSize: 6.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 8.87.h,
                        horizontal: 12.8.w,
                      ),
                      width: 44.62.w,
                      height: 44.62.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.2,
                          color: AppColors.primaryColor,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        AppImages.microphone,
                        width: 18.14.w,
                        height: 25.92.h,
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Container(
                      width: 44.62.w,
                      height: 44.62.h,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        size: 30.r,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
