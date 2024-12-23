import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_bonfire/utils/app_colors.dart';
import 'package:stroll_bonfire/utils/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bottomNavBarColor,
      bottomNavigationBar: _buildBottomNavBar(),
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
          SafeArea(
            child: Column(
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
                        fontSize: 34.sp,
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
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.headerTextColor,
                      shadows: [
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
                        SvgPicture.asset(AppImages.timer),
                        SizedBox(
                          width: 3.27.w,
                        ),
                        Text(
                          '22h 00m',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 9.73.w,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.userIcon,
                          color: Colors.white,
                          width: 20.w,
                        ),
                        SizedBox(
                          width: 4.24.w,
                        ),
                        Text(
                          '103',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      onTap: (index) {},
      backgroundColor: AppColors.bottomNavBarColor,
      fixedColor: AppColors.bottomNavBarColor,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      items: [
        _buildBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.pokerCards),
        ),
        _buildBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.flameIcon),
          hasBadge: true,
        ),
        _buildBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.chatIcon),
          hasBadge: true,
        ),
        _buildBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.userIcon),
          hasBadge: true,
        ),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem(
      {required Widget icon, bool hasBadge = false}) {
    return BottomNavigationBarItem(
      icon: Container(
        padding:
            EdgeInsets.only(left: 9.w, top: 8.h, bottom: 8.h, right: 10.47),
        child: Stack(
          children: [
            icon,
            if (hasBadge)
              Positioned(
                top: 0.84.h,
                child: Container(
                  height: 13.h,
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: Text(
                      '10',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
      label: '',
    );
  }
}
