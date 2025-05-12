import 'package:e_commerce_app/core/helper_function.dart/build_error_bar.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signin_cubit/signin_states.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninStates>(
      listener: (context, state) {
        if (state is SigninFailureState) {
          buildErrorBar(context, state.error);
        } else if (state is SigninSuccessState) {}
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SigninLoadingState ? true : false,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
