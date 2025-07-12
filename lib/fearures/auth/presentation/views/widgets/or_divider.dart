import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Expanded(child: Divider(color: Color(0xffC9CECF), thickness: 1)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'أو',
            style: TextStyles.semiBold16.copyWith(color: const Color(0xff616A6B)),
          ),
        ),
      const  Expanded(child: Divider(color: Color(0xffC9CECF), thickness: 1)),
      ],
    );
  }
}
