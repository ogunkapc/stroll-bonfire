import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_bonfire/model/option_model.dart';
import 'package:stroll_bonfire/utils/app_colors.dart';

class OptionTile extends StatelessWidget {
  final Option option;
  const OptionTile({
    super.key,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
      decoration: BoxDecoration(
        color: AppColors.optionsCardColor,
        borderRadius: BorderRadius.circular(12.r),
        border: option.isSelected
            ? Border.all(
                color: AppColors.primaryColor,
                width: 2.w,
              )
            : null,
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
              shape: BoxShape.circle,
              color: option.isSelected
                  ? AppColors.primaryColor
                  : Colors.transparent,
              border: Border.all(
                color: option.isSelected
                    ? AppColors.primaryColor
                    : AppColors.optionsTextColor,
              ),
            ),
            child: Center(
              child: Text(
                option.label,
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
              option.text,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.optionsTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
