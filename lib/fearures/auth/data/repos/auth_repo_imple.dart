import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/exceptions.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/services/firebase_auth_services.dart';
import 'package:e_commerce_app/fearures/auth/data/models/user_model.dart';
import 'package:e_commerce_app/fearures/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app/fearures/auth/domain/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in createUserWithEmailAndPassword ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in signInWithEmailAndPassword ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in signInWithGoogle ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthServices.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in signInWithFacebook ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }
  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    try {
      var user = await firebaseAuthServices.signInWithApple();
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in signInWithApple ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }
}
