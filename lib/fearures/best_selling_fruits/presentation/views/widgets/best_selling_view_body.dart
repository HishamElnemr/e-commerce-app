import 'package:e_commerce_app/core/widgets/best_selling_grid_view.dart';
import 'package:flutter/material.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        BestSellingGridView()
      ],
    );
  }
}
