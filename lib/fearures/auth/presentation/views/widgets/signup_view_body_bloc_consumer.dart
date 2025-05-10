import 'package:e_commerce_app/core/helper_function.dart/build_error_bar.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_states.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupStates>(
      listener: (context, state) {
        if (state is SignupFailureState) {
          buildErrorBar(context, state.message);
        } else if (state is SignupSuccessState) {}
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoadingState ? true : false,
          opacity: 0.5,
          progressIndicator: const CircularProgressIndicator(),
          color: Colors.black,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
