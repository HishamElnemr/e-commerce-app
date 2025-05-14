import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.onSaved});
  final void Function(String?)? onSaved;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: isObscure,
      hitText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        child:
            isObscure
                ?  const Icon(
                  Icons.visibility_outlined,
                  color: AppColors.kGreyColor,
                )
                : const Icon(
                  Icons.visibility_off_outlined,
                   color: AppColors.kGreyColor,
                ),
      ),
      onSaved: widget.onSaved,
    );
  }
}
