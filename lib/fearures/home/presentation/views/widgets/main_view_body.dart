import 'package:e_commerce_app/fearures/home/presentation/views/cart_view.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import '../products_view.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
    required this.currentViewIndex,
  });

  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [
        HomeView(),
        ProductsView(),
        CartView(),
      ],
    );
  }
}
