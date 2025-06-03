import 'dart:convert';

import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_preferences_singleton.dart';
import 'package:e_commerce_app/fearures/auth/data/models/user_model.dart';
import 'package:e_commerce_app/fearures/auth/domain/entites/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);
  if (jsonString == null || jsonString.isEmpty) {
    throw Exception('No user data found');
  }
  var user = UserModel.fromJson(jsonDecode(jsonString));
  return user;
}
