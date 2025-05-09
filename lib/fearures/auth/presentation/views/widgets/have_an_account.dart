import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: ' تمتلك حساب بالفعل؟',
        style: TextStyles.semiBold16.copyWith(color: Color(0xff616A6B)),
        children: [
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pop(context);
                  },
            text: ' تسجيل دخول',
            style: TextStyles.semiBold13.copyWith(
              color: AppColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
