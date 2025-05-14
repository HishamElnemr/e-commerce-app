import 'package:e_commerce_app/fearures/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomeViewBody()));
  }
}