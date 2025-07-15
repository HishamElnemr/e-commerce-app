import 'package:e_commerce_app/core/helper_function.dart/get_dummy_product.dart';
import 'package:e_commerce_app/core/products_cubit.dart/products_cubit.dart';
import 'package:e_commerce_app/core/widgets/custom_error_widget.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/products_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';


class ProductsGridViewBlocBuilder extends StatelessWidget {
  const ProductsGridViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsCubitState>(
      builder: (context, state) {
        if (state is ProductsCubitSuccess) {
          return ProductsGridView(
            products: state.products,
          );
        } else if (state is ProductsCubitFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errorMessage: state.message));
        } else {
          return Skeletonizer.sliver(
            enabled: true,
            child: ProductsGridView(
              products: getDummyProducts(),
            ),
          );
        }
      },
    );
  }
}
