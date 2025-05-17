import 'package:e_commerce_app/fearures/home/domain/entites/bottom_nav_bar_entity.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children: [
          ...bottomNavBarItems.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final item = entry.value;
              return Expanded(
                flex: index == currentIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () => setState(() => currentIndex = index),
                  child: NavigationBarItem(
                    item: item,
                    isSelected: currentIndex == index,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
