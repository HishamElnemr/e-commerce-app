import 'package:e_commerce_app/core/helper_function.dart/get_dummy_product.dart';
import 'package:e_commerce_app/core/products_cubit.dart/products_cubit.dart';
import 'package:e_commerce_app/core/widgets/best_selling_grid_view.dart';
import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BestSellingGridViewBlocBuilder extends StatelessWidget {
  const BestSellingGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsCubitState>(
      builder: (context, state) {
        if (state is ProductsCubitSuccess) {
          return BestSellingGridView(getProducts: state.products);
        } else if (state is ProductsCubitFailure) {
          return const SliverToBoxAdapter(
            child: CustomErrorWidget(
              errorMessage: 'An error occurred Try again',
            ),
          );
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: BestSellingGridView(
              getProducts: getDummyProducts()),
          );
        }
      },
    );
  }
}
