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
    final double width = MediaQuery.of(context).size.width;

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
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
                style: const TextStyle(
                  color: AppColors.optionsTextColor,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width > 600 ? 8.w : 9.w,
          ),
          Expanded(
            child: Text(
              option.text,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.optionsTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
