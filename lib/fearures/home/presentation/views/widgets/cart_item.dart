import 'package:e_commerce_app/app_color.dart';
import 'package:e_commerce_app/core/widgets/cached_network_image_widget.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/cart_item_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  // final CartItemEntity carItemEntity;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 73,
            height: 92,
            decoration: const BoxDecoration(color: Color(0xFFF3F5F7)),
            child: const CachedNetworkImageWidget(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQykzoZeCE0p7LeuyHnLYCdPP2jju9d5PaMeA&s',
            ),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('منتج 1', style: TextStyles.bold13),
                    const Spacer(),
                    SvgPicture.asset(Assets.assetsImagesDelete),
                  ],
                ),
                Text(
                  'كيلو كم',
                  textAlign: TextAlign.right,
                  style: TextStyles.regular13.copyWith(
                    color: AppColors.secondaryColor,
                  ),
                ),
                Row(
                  children: [
                    CartItemActionButtons(),
                    const Spacer(),
                    Text(
                      '50 جنيه ',
                      style: TextStyles.bold16.copyWith(
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
