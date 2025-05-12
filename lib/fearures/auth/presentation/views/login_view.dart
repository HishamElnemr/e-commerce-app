import 'package:e_commerce_app/core/services/getit_services.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/fearures/auth/data/repos/auth_repo_imple.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/login_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = '/login_view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(getIt<AuthRepoImpl>()),
      child: Scaffold(
        appBar: customAppBar(context, title: 'تسجيل الدخول'),
        body: const LoginViewBodyBlocConsumer(),
      ),
    );
  }
}
