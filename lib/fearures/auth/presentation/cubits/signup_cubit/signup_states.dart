import 'package:e_commerce_app/fearures/auth/domain/entites/user_entity.dart';

class SignupStates {}

class SignupInitialState extends SignupStates {}

class SignupLoadingState extends SignupStates {}

class SignupSuccessState extends SignupStates {
  final UserEntity userEntity;
  SignupSuccessState(this.userEntity);
}
class SignupFailureState extends SignupStates {
  final String message;
  SignupFailureState(this.message);
}