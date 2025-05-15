import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('الاكثر مبيعا', style: TextStyles.bold16),
        Text(
          'المزيد',
          style: TextStyles.regular13.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
