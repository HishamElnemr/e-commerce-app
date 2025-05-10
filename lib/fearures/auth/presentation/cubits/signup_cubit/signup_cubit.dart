import 'package:e_commerce_app/fearures/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/fearures/auth/presentation/cubits/signup_cubit/signup_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit {
  SignupCubit(this.authRepo) : super(SignupInitialState());
  final AuthRepo authRepo;
 Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    emit(SignupLoadingState());
    var result = await authRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
      name: name,
    );
    result.fold(
      (failure) => emit(SignupFailureState(failure.message)),
      (userEntity) => emit(SignupSuccessState(userEntity)),
    );
  }
}
