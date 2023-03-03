import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/app/util/custom_bot_navbar.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/pages/application/controller/application_controller.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/contact_list_view.dart';

class ApplicationView extends GetView<ApplicationsController> {
  const ApplicationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Column(
        children: [
          // Expanded(
          //   child: IndexedStack(
          //     index: controller.selectedNavIndex.value.index,
          //     children: [
          //       const ContactListView(),
          //       Center(
          //           child:
          //               CommonText(text: 'my groups', color: AppColors.white)),
          //       Center(
          //           child: CommonText(text: 'search', color: AppColors.white)),
          //       Center(
          //           child: CommonText(text: 'premium', color: AppColors.white)),
          //     ],
          //   ),
          // ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              onPageChanged: (index) {
                controller.onPageChage(index);
              },
              children: [
                const ContactListView(),
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
