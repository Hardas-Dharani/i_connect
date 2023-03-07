import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/util/custom_bot_navbar.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/pages/application/controller/application_controller.dart';
import 'package:i_connect/presentation/tabs/groups_tab/my_group/my_groups_view.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/contact_list_view.dart';
import 'package:i_connect/presentation/tabs/premium_tabs/premium/premium_view.dart';
import 'package:i_connect/presentation/tabs/search_tab/search/search_view.dart';

class ApplicationView extends GetView<ApplicationsController> {
  const ApplicationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => IndexedStack(
                index: controller.tabIndex.value,
                children: const [
                  ContactListView(),
                  MyGroupsView(),
                  SearchView(),
                  PremiumView(),
                ],
              ),
            ),
          ),
        ],
      ),
      //     Column(
      //   children: [
      //     Expanded(
      //       child: PageView(
      //         physics: const NeverScrollableScrollPhysics(),
      //         controller: controller.pageController,
      //         onPageChanged: (index) {
      //           controller.onPageChage(index);
      //         },
      //         children: const [
      //           ContactListView(),
      //           MyGroupsView(),
      //           SearchView(),
      //           PremiumView(),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
