import 'package:flutter/cupertino.dart';
import 'package:fulcrum/application/utils/app_colors.dart';
import 'package:fulcrum/application/widgets/texts/custom_text.dart';

class BidItems extends StatelessWidget {
  const BidItems({super.key, required this.title, required this.value, this.color});

  final String title;
  final String value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CustomText(text: title, fontSize: 16, weight: FontWeight.w500),
          CustomText(text: value, fontSize: 16, weight: FontWeight.w500, color: color ?? AppColors.textColor),
        ]
    );
  }
}