import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/types/tab_type.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/app/util/custom_bot_navbar.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/pages/application/controller/application_controller.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/contact_list_view.dart';
import 'package:sizer/sizer.dart';

import '../../../app/extensions/color.dart';
import '../../../app/util/avatar_bottom_text.dart';

class ApplicationView extends GetView<ApplicationsController> {
  const ApplicationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      bottomNavigationBar: Obx(
        () => CustomBottomNavBar(
          items: [
            TabType.home.bottomNavigationBarItem,
            TabType.myGroups.bottomNavigationBarItem,
            TabType.search.bottomNavigationBarItem,
            TabType.premium.bottomNavigationBarItem,
          ],
          currentIndex: controller.selectedNavIndex.value.index,
          onTap: (index) {
            controller.onBottomBarItemTap(index);
            controller.selectedNavIndex.value = TabType.values[index];
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.onPageChage(index);
              },
              children: [
                const ContactListView(),
                // Center(
                //     child: CommonText(text: 'home', color: AppColors.white)),
                Center(
                    child:
                        CommonText(text: 'my groups', color: AppColors.white)),
                Center(
                    child: CommonText(text: 'search', color: AppColors.white)),
                Center(
                    child: CommonText(text: 'premium', color: AppColors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
