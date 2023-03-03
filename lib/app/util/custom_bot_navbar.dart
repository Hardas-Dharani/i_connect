import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/presentation/pages/application/controller/application_controller.dart';

import '../extensions/color.dart';
import '../types/tab_type.dart';

class CustomBottomNavBar extends GetView<ApplicationsController> {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        backgroundColor: HexColor("000711"),
        items: [
          TabType.home.bottomNavigationBarItem,
          TabType.myGroups.bottomNavigationBarItem,
          TabType.search.bottomNavigationBarItem,
          TabType.premium.bottomNavigationBarItem,
        ],
        currentIndex: controller.selectedNavIndex.value.index,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          controller.onBottomBarItemTap(index);
          controller.selectedNavIndex.value = TabType.values[index];
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.white,
        selectedItemColor: AppColors.green,
      ),
    );
  }
}