import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_bonfire/model/option_model.dart';
import 'package:stroll_bonfire/widgets/option_tile.dart';

class QuestionOptions extends StatelessWidget {
  const QuestionOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Option> options = [
      Option(
          label: 'A',
          text: 'The peace in the early mornings',
          isSelected: false),
      Option(label: 'B', text: 'The magical golden hours', isSelected: false),
      Option(
          label: 'C', text: 'Wind-down time after dinners', isSelected: false),
      Option(
          label: 'D',
          text: 'The serenity past midnight',
          isSelected: true), // Selected option
    ];

    return Expanded(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12.h,
            crossAxisSpacing: 12.w,
            childAspectRatio: 2.5,
          ),
          itemCount: options.length,
          itemBuilder: (context, index) {
            return OptionTile(
              option: options[index],
            );
          }),
    );
  }
}
