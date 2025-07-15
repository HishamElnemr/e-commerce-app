import 'package:e_commerce_app/fearures/home/presentation/views/widgets/cart_view_body.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = '/cart-view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartViewBody(),
    );
  }
}