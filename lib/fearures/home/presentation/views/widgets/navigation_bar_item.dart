import 'package:e_commerce_app/fearures/home/domain/entites/bottom_nav_bar_entity.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/active_item.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/in_active_item.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.item,
  });
  final bool isSelected;
  final BottomNavBarEntity item;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ?  ActiveItem(text: item.name, image: item.activeImage,)
        : InActiveItem(image: item.inActiveImage);
  }
}
