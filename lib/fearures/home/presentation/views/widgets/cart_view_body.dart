import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/products_cubit.dart/products_cubit.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/core/widgets/search_text_field.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/car_items_list.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/cart_header.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/products_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: kHorizontalPadding),
              customAppBar(
                context,
                title: 'السلة',
                showBackButton: true,
                showNotification: false,
              ),
              const SizedBox(height: 16),
              const CartHeader(),
              const SizedBox(height: 12),
            ],
          ),
        ),
        SliverToBoxAdapter(child: const CustomDivider(),),
        CarItemsList(),
        SliverToBoxAdapter(child: const CustomDivider(),),
      ],
    );
  }
}
