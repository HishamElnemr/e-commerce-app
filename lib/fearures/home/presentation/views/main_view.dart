import 'package:e_commerce_app/fearures/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});
  static const String routeName = '/home-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(child: HomeViewBody(),
    ),
    );
  }
}