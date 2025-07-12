import 'package:e_commerce_app/core/helper_function.dart/build_error_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_modal_progress_hud.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_states.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupStates>(
      listener: (context, state) {
        if (state is SignupFailureState) {
          buildSnackBar(context, state.message);
        } else if (state is SignupSuccessState) {
          buildSnackBar(context, 'تم انشاء الحساب بنجاح');
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHUD(
          isLoading: state is SignupLoadingState ? true : false,
          child: const SignupViewBody(),
        );
      },
    );
  }
}
