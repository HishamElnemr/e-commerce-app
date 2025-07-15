import 'package:e_commerce_app/fearures/home/presentation/views/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/main_view_body.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = '/home-view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: currentViewIndex,
        onItemTapped: (index) {
          setState(() {
            currentViewIndex = index;
          });
        },
      ),
      body: SafeArea(child: MainViewBody(currentViewIndex: currentViewIndex)),
    );
  }
}
