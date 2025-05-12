import 'package:e_commerce_app/fearures/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signin_cubit/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninCubit extends Cubit <SigninStates> 
{
  SigninCubit(this.authRepo):super(SigninInitialState());
  final AuthRepo authRepo;

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(SigninLoadingState());
    final result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(SigninFailureState(failure.message)),
      (user) => emit(SigninSuccessState(user)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoadingState());
    final result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SigninFailureState(failure.message)),
      (user) => emit(SigninSuccessState(user)),
    );
  }
}