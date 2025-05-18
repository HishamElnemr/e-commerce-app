import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/best_selling_grid_view.dart';
import 'package:flutter/material.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [BestSellingGridView()],
      ),
    );
  }
}
