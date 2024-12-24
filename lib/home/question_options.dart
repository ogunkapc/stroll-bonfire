import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_bonfire/model/option_model.dart';
import 'package:stroll_bonfire/widgets/option_tile.dart';

class QuestionOptions extends StatefulWidget {
  const QuestionOptions({
    super.key,
  });

  @override
  State<QuestionOptions> createState() => _QuestionOptionsState();
}

class _QuestionOptionsState extends State<QuestionOptions> {
  final List<Option> options = [
    Option(label: 'A', text: 'The peace in the early mornings', value: 0),
    Option(label: 'B', text: 'The magical golden hours', value: 1),
    Option(label: 'C', text: 'Wind-down time after dinners', value: 2),
    Option(label: 'D', text: 'The serenity past midnight', value: 3),
  ];

  int? selectedOptionValue;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: width > 600 ? 15.w : 12.w,
          childAspectRatio: width > 600 ? 1.5.r : 2.5.r,
        ),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedOptionValue = options[index].value;
                for (var option in options) {
                  option.isSelected = (option.value == selectedOptionValue);
                }
              });
            },
            child: OptionTile(
              option: options[index],
            ),
          );
        },
      ),
    );
  }
}
