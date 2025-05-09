import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/have_an_account.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/terms_and_conditon.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextFormField(
              hitText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16,),
            const CustomTextFormField(
              hitText: 'البريد الالكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hitText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(height: 16),
            TermsAndConditionsWidget(onChanged: (bool value) {  },),
            const SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'انشاء حساب جديد',),
            const SizedBox(height: 16),
            HaveAnAccount()
          ],
        ),
      ),
    );
  }
}
