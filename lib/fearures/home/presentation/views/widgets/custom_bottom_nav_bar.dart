import 'package:e_commerce_app/fearures/home/domain/entites/bottom_nav_bar_entity.dart';
import 'package:e_commerce_app/fearures/home/presentation/views/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  final ValueChanged<int> onItemTapped;
  final int selectedIndex;

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
        children:
            bottomNavBarItems.asMap().entries.map((e) {
              var index = e.key;
              var entity = e.value;

              return Expanded(
                flex: index == selectedIndex ? 3 : 2,
                child: GestureDetector(
                  onTap: () {
                    onItemTapped(index);
                  },
                  child: NavigationBarItem(
                    isSelected: index == selectedIndex,
                    item: entity,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
