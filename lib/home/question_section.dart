import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_bonfire/utils/app_colors.dart';
import 'package:stroll_bonfire/utils/app_images.dart';

class QuestionSection extends StatelessWidget {
  const QuestionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    bool isLargeScreen = width > 700;

    return Container(
      height: isLargeScreen ? 115.h : 100.h,
      width: double.infinity,
      margin: EdgeInsets.only(
        top: isLargeScreen ? 50.h : 0,
      ),
      child: Stack(
        children: [
          SizedBox(
            width: isLargeScreen ? 130.w : 170.w,
            child: Stack(
              children: [
                Positioned(
                  left: isLargeScreen ? 40.w : 50.w,
                  top: 7.h,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                            right: 10.w,
                            top: 4.h,
                            bottom: 4.h,
                            left: 10.w,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color(0xFF121518).withOpacity(0.9),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 14),
                                blurRadius: 16.r,
                                color: const Color(0x4D000000),
                              )
                            ],
                          ),
                          child: Text(
                            'Angelina, 28',
                            style: TextStyle(
                              color: AppColors.questionTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: isLargeScreen ? 15.spMin : 11.sp,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60.h,
                  width: 60.w,
                  margin: EdgeInsets.only(left: 11.w),
                  padding: EdgeInsets.all(5.r),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.textBlack,
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(250.r),
                    child: Image.asset(
                      AppImages.joeyImage,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 36.h,
            left: isLargeScreen ? 55.w : 72.w,
            right: 8.w,
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'What is your favorite time of the day?',
                style: TextStyle(
                  color: AppColors.questionTextColor,
                  fontSize: MediaQuery.of(context).size.width > 400
                      ? 22.spMin
                      : isLargeScreen
                          ? 25.spMin
                          : 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
