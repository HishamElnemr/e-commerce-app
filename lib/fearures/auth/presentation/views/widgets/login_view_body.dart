import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [CustomAppBar(title: 'تسجيل الدخول')]),
    );
  }
}

