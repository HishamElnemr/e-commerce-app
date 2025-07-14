import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/entites/product_entity.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key, required this.product});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFF3F5F7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Flexible(child: Image.network(product.imageUrl!)),
                const SizedBox(height: 24),
                ListTile(
                  title: Text(
                    product.name,
                    textAlign: TextAlign.right,
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '${product.price} جنية ',
                          style: TextStyles.bold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '/',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                        TextSpan(
                          text: '${product.unitAmount} ${"كيلو"}',
                          style: TextStyles.semiBold13.copyWith(
                            color: AppColors.lightSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
