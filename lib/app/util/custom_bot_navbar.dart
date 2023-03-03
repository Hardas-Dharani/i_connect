import 'package:flutter/material.dart';
import 'package:i_connect/app/config/app_colors.dart';

import '../extensions/color.dart';

class CustomBottomNavBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int)? onTap;
  const CustomBottomNavBar({
    required this.items,
    required this.currentIndex,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: HexColor("000711"),
      items: items,
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: AppColors.white,
      selectedItemColor: AppColors.green, //HexColor('00FFA8'),
    );
  }
}
