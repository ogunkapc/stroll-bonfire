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
    return SizedBox(
      height: 105.h,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: 170.w,
            child: Stack(
              children: [
                Positioned(
                  left: 50.w,
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
                              fontSize: 11.sp,
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
                    borderRadius: BorderRadius.circular(100.r),
                    child: Image.asset(
                      AppImages.joeyImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 36.h,
            left: 72.w,
            right: 5.w,
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'What is your favorite time of the day?',
                style: TextStyle(
                  color: AppColors.questionTextColor,
                  fontSize: 20.sp,
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
