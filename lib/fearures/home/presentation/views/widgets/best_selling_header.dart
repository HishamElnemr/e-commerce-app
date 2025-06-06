import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/fearures/best_selling_fruits/presentation/views/best_selling_view.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('الاكثر مبيعا', style: TextStyles.bold16),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, BestSellingView.routeName);
          },
          child: Text(
            'المزيد',
            style: TextStyles.regular13.copyWith(color: AppColors.greyColor),
          ),
        ),
      ],
    );
  }
}
