import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/products_cubit.dart/products_cubit.dart';
import 'package:e_commerce_app/core/widgets/search_text_field.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/best_selling_grid_view_bloc_builder.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/best_selling_header.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/featured_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  initState() {
    super.initState();
    BlocProvider.of<ProductsCubit>(context, listen: false).getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPadding),
                CustomHomeAppBar(),
                SizedBox(height: kTopPadding),
                SearchTextField(),
                SizedBox(height: 12),
                FeaturedList(),
                SizedBox(height: 12),
                BestSellingHeader(),
                SizedBox(height: 8),
              ],
            ),
          ),
          BestSellingGridViewBlocBuilder(),
        ],
      ),
    );
  }
}


