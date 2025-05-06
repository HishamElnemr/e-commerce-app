import 'package:e_commerce_app/fearures/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app/fearures/auth/presentation/views/signup_view.dart';
import 'package:e_commerce_app/fearures/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce_app/fearures/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (_) => const SignupView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
