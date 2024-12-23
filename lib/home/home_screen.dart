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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 350.h,
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage(AppImages.fadeBackground),
                //   fit: BoxFit.fill,
                // ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    const Color(0xFF000000),
                    const Color(0xFF000000),
                    const Color(0xFF121518).withOpacity(0.9),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 7.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.bottomNavBarColor)),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 36.h,
                            left: 69.w,
                            right: 0,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'What is your favorite time of the day?',
                                    style: TextStyle(
                                      color: AppColors.questionTextColor,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: AppColors.questionTextColor,
                            )),
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
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              color: const Color(0xFF121518)
                                                  .withOpacity(0.9),
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: const Offset(0, 14),
                                                  blurRadius: 16.r,
                                                  color:
                                                      const Color(0x4D000000),
                                                )
                                              ]),
                                          child: Text(
                                            'Angelina, 28',
                                            style: TextStyle(
                                              color:
                                                  AppColors.questionTextColor,
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
                                  height: 66.h,
                                  width: 60.w,
                                  margin: EdgeInsets.only(left: 11.w),
                                  padding: EdgeInsets.all(5.r),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF121517),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      AppImages.joeyImage,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Text(
                      '"Mine is the peace in the morning."',
                      style: TextStyle(
                        color: AppColors.answerTextColor,
                        fontSize: 12.sp,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 12.h,
                            crossAxisSpacing: 12.w,
                            childAspectRatio: 2.5,
                          ),
                          itemCount: 4,
                          itemBuilder: (index, context) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 13.h),
                              decoration: BoxDecoration(
                                color: AppColors.optionsCardColor,
                                borderRadius: BorderRadius.circular(12.r),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x4D000000),
                                    offset: Offset(-1, -1),
                                    blurRadius: 2,
                                  ),
                                  BoxShadow(
                                    color: Color(0x4D484848),
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                  ),
                                  BoxShadow(
                                    color: Color(0x4D000000),
                                    offset: Offset(2, 2),
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 20.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      border: Border.all(
                                        color: AppColors.optionsTextColor,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'A',
                                        style: TextStyle(
                                          color: AppColors.optionsTextColor,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 9.w,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "The peace in the early mornings",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.optionsTextColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  width: 2.2.w,
                                  color: AppColors.primaryColor,
                                ),
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: SvgPicture.asset(AppImages.microphone),
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
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Icon(
                                Icons.arrow_forward_rounded,
                                size: 34.r,
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
        padding: EdgeInsets.only(left: 9.w, right: 10.47),
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
