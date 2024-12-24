import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_bonfire/utils/app_colors.dart';
import 'package:stroll_bonfire/utils/app_images.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    bool isLargeScreen = width > 700;

    return Column(
      children: [
        SizedBox(
          height: 14.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Stroll Bonfire",
              style: TextStyle(
                fontSize: isLargeScreen ? 50 : 34.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.headerTextColor,
                shadows: const [
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 7.9,
                    color: Color(0x33000000),
                  ),
                  Shadow(
                    offset: Offset(0, 0),
                    blurRadius: 2.0,
                    color: Color(0xFFBEBEBE),
                  ),
                  Shadow(
                    color: Color(0x8024232F),
                    offset: Offset(0, 1),
                    blurRadius: 2.0,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.headerTextColor,
              size: 34.r,
              shadows: const [
                Shadow(
                  color: Color(0x80000000),
                  blurRadius: 0.3,
                  offset: Offset(0, 0.3),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.timer,
                  width: isLargeScreen ? 20 : null,
                ),
                SizedBox(
                  width: 3.27.w,
                ),
                Text(
                  '22h 00m',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isLargeScreen ? 30.spMin : 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 9.73,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.userIcon,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                  width: isLargeScreen ? 35 : 20.w,
                ),
                SizedBox(
                  width: 2.24.w,
                ),
                Text(
                  '103',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isLargeScreen ? 30.spMin : 12.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
