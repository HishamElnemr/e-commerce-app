import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'ليس لديك حساب؟',
        style: TextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),
        children: [
          TextSpan(
            text: ' انشاء حساب',
            style: TextStyles.semiBold13.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
