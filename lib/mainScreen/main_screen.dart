import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_bonfire/home/home_screen.dart';
import 'package:stroll_bonfire/utils/app_colors.dart';
import 'package:stroll_bonfire/utils/app_images.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    Scaffold(
      body: Center(
        child: Text(
          'Coming Soon...',
          style: TextStyle(
            color: AppColors.textBlack,
            fontSize: 20.sp,
          ),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          'Coming Soon...',
          style: TextStyle(
            color: AppColors.textBlack,
            fontSize: 20.sp,
          ),
        ),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text(
          'Coming Soon...',
          style: TextStyle(
            color: AppColors.textBlack,
            fontSize: 20.sp,
          ),
        ),
      ),
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bottomNavBarColor,
      bottomNavigationBar: _buildBottomNavBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
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
            badgeAmount: "100"),
        _buildBottomNavBarItem(
          icon: SvgPicture.asset(AppImages.chatIcon),
          hasBadge: true,
          badgeAmount: '10',
        ),
        _buildBottomNavBarItem(
          icon: SvgPicture.asset(
            AppImages.userIcon,
            width: 34,
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavBarItem({
    required Widget icon,
    bool hasBadge = false,
    String badgeAmount = '',
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(right: 20.w),
            child: icon,
          ),
          if (hasBadge)
            Positioned(
              top: 0.84.h,
              left: 18.44.w,
              child: Container(
                height: 13.h,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: Text(
                    badgeAmount,
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 7.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      label: '',
    );
  }
}
