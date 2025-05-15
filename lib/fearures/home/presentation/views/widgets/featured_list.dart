import 'package:e_commerce_app/fearures/home/presentation/views/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),

        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedItem(),
          );
        },
      ),
    );
  }
}
