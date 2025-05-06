import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hitText: 'البريد الالكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hitText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color(0xffC9CECF),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'نسيت كلمة المرور؟',
              style: TextStyles.semiBold13.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            SizedBox(height: 33),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            SizedBox(height: 33),
            Align(alignment: Alignment.center, child: DontHaveAccountWidget()),
            SizedBox(height: 33),
            OrDivider(),
            SizedBox(height: 16),
            SocialLoginButton(
              iconPath: 'assets/images/google_icon.svg',
              text: 'تسجيل الدخول باستخدام جوجل',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              iconPath: 'assets/images/facebook_icon.svg',
              text: 'تسجيل الدخول باستخدام فيسبوك',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            SocialLoginButton(
              iconPath: 'assets/images/appl_icon.svg',
              text: 'تسجيل الدخول باستخدام ابل',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
