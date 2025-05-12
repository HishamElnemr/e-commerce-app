import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce_app/core/widgets/password_field.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 24),
              CustomTextFormField(
                hitText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(height: 16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: 16),
              Text(
                'نسيت كلمة المرور؟',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightPrimaryColor,
                ),
              ),
              SizedBox(height: 33),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SigninCubit>().signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: 'تسجيل الدخول',
              ),
              SizedBox(height: 33),
              Align(
                alignment: Alignment.center,
                child: DontHaveAccountWidget(),
              ),
              SizedBox(height: 33),
              OrDivider(),
              SizedBox(height: 16),
              SocialLoginButton(
                iconPath: 'assets/images/google_icon.svg',
                text: 'تسجيل الدخول باستخدام جوجل',
                onPressed: () 
                {
                  context.read<SigninCubit>().signInWithGoogle();
                },
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                iconPath: 'assets/images/facebook_icon.svg',
                text: 'تسجيل الدخول باستخدام فيسبوك',
                onPressed: () 
                {
                  context.read<SigninCubit>().signInWithFacebook();
                },
              ),
              SizedBox(height: 16),
              SocialLoginButton(
                iconPath: 'assets/images/appl_icon.svg',
                text: 'تسجيل الدخول باستخدام ابل',
                onPressed: () 
                {
                  context.read<SigninCubit>().signInWithApple();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
