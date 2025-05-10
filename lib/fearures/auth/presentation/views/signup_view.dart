import 'package:e_commerce_app/core/services/getit_services.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/fearures/auth/data/repos/auth_repo_imple.dart';
import 'package:e_commerce_app/fearures/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_states.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/signup_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = '/signup_view';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepoImpl>()),
      child: Scaffold(
        appBar: customAppBar(context, title: ' حساب جديد'),
        body:const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}


