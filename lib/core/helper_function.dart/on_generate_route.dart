import 'package:e_commerce_app/fearures/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashView(),
      );
   
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(),
      );
  }
}