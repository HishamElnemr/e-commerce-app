import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hitText,
    required this.keyboardType,
    this.suffixIcon,
  });
  final String hitText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'الرجاء ادخال البريد الالكتروني';
        }
        return null;
      },
      keyboardType: keyboardType,

      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hitText,
        hintStyle: TextStyles.bold13.copyWith(color: const Color(0xFF949D9E)),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    );
  }
}
