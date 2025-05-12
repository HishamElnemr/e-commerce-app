import 'package:e_commerce_app/fearures/auth/domain/entites/user_entity.dart';

class SigninStates {}

class SigninInitialState extends SigninStates {}

class SigninLoadingState extends SigninStates {}

class SigninSuccessState extends SigninStates {
  final UserEntity message;
  SigninSuccessState(this.message);
}

class SigninFailureState extends SigninStates {
  final String error;
  SigninFailureState(this.error);

}
