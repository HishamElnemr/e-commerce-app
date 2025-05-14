import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/core/errors/exceptions.dart';
import 'package:e_commerce_app/core/errors/failures.dart';
import 'package:e_commerce_app/core/services/database_services.dart';
import 'package:e_commerce_app/core/services/firebase_auth_services.dart';
import 'package:e_commerce_app/core/services/firestore_services.dart';
import 'package:e_commerce_app/core/utils/backend_endpoints.dart';
import 'package:e_commerce_app/fearures/auth/data/models/user_model.dart';
import 'package:e_commerce_app/fearures/auth/domain/entites/user_entity.dart';
import 'package:e_commerce_app/fearures/auth/domain/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseService databaseService;
  AuthRepoImpl({
    required this.databaseService,
    required this.firebaseAuthServices,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);
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
      var userEntity = await getUserData(uId: user.uid);
      return right(userEntity);
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in signInWithEmailAndPassword ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExists = await databaseService.checkIfDataExists(
        path: BackendEndpoints.getUserEndpoint,
        documentId: user.uid,
      );
      if (isUserExists) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } on CustomException catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);
      log('Exception in signInWithGoogle ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما يرجى المحاولة لاحقاً'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthServices.signInWithFacebook();
      var userEntity = UserModel.fromFirebaseUser(user);
      var isUserExists = await databaseService.checkIfDataExists(
        path: BackendEndpoints.getUserEndpoint,
        documentId: user.uid,
      );
      if (isUserExists) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(user: userEntity);
      }
      return right(userEntity);
    } on CustomException catch (e) {
      deleteUser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      deleteUser(user);
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

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(
      BackendEndpoints.addUserEndpoint,
      user.toMap(),
      user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    final userData = await databaseService.getData(
      path: BackendEndpoints.getUserEndpoint,
      documentId: uId,
    );
    return UserModel.fromJson(userData);
  }

  void deleteUser(User? user) {
    if (user != null) {
      user.delete();
    }
  }
}
