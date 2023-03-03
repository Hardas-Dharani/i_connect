import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/types/tab_type.dart';

class ApplicationsController extends GetxController {
  var page = 0.obs;
  late final PageController pageController;
  Rx<TabType> selectedNavIndex = TabType.home.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(
      initialPage: page.value,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChage(int index) {
    page.value = index;
    update();
  }

  onBottomBarItemTap(int index) {
    pageController.jumpToPage(index);
    update();
  }
}
