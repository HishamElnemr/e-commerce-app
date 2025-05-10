import 'package:e_commerce_app/core/services/firebase_auth_services.dart';
import 'package:e_commerce_app/fearures/auth/data/repos/auth_repo_imple.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;
void setup() {
 getIt.registerSingleton<FirebaseAuthServices>(
   FirebaseAuthServices(),
 );
 getIt.registerSingleton<AuthRepoImpl>(
   AuthRepoImpl(
     firebaseAuthServices: getIt<FirebaseAuthServices>(),
   ),
 );
 
}