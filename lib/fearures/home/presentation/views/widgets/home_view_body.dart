import 'package:e_commerce_app/fearures/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [SliverToBoxAdapter(child: CustomHomeAppBar(),),],
    );
  }
}
