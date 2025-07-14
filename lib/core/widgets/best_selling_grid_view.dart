import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/widgets/fruit_item.dart';
import 'package:flutter/material.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key, required this.getProducts});
  final List<ProductEntity> getProducts;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),

      itemCount: getProducts.length,
      itemBuilder: (context, index) {
        return FruitItem(product: getProducts[index]);
      },
    );
  }
}
