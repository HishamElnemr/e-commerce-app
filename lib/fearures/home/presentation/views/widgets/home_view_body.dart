import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/search_text_field.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/featured_item.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/featured_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: kTopPadding),
                CustomHomeAppBar(),
                SizedBox(height: kTopPadding),
                SearchTextField(),
                SizedBox(height:12),
                FeaturedList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
