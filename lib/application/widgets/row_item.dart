import 'package:flutter/cupertino.dart';
import 'package:fulcrum/application/utils/app_colors.dart';
import 'package:fulcrum/application/widgets/texts/custom_text.dart';

class RowItem extends StatelessWidget {
  const RowItem({super.key, required this.title, required this.value, this.color});

  final String title;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(text: title, fontSize: 16, weight: FontWeight.w400),
          CustomText(text: value, fontSize: 16, weight: FontWeight.w500, color: color ?? AppColors.textColor),
        ]
    );
  }
}