import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: LoginViewBody()));
  }
}
