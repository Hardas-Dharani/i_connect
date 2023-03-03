import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/presentation/tabs/groups_tab/my_group/components/my_groups_tile.dart';
import 'package:i_connect/presentation/tabs/groups_tab/my_group/controller/my_groups_controller.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/components/avatar_bottom_text.dart';

import '../../../../app/util/common_appbar.dart';
import '../../home_tab/contact_list/components/stacked_group_avatar.dart';

class MyGroupsView extends GetView<MyGroupsController> {
  const MyGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CommonAppBar(
              title: 'My Groups',
              backIconTap: () {},
              homeIconTap: () {},
            ),
            SizedBox(height: Get.height * 0.04),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: AvatarWithLabel(
                icons: FontAwesomeIcons.peopleGroup,
                iconColor: AppColors.green,
                label: 'Add Group',
                labelColor: AppColors.white.withOpacity(0.7),
                backgroundColor: AppColors.lightBlack2,
              ),
            ),
            SizedBox(height: Get.height * 0.04),
            SizedBox(
              height: Get.height * 0.8,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: controller.myList.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.myList[index];
                    return MyGroupsTile(
                      leading: StackedAvatras(imgURL: item.imgURL ?? ""),
                      bgColor: index % 2 == 0
                          ? AppColors.lightBlack2
                          : Colors.transparent,
                      label: item.title ?? "",
                      subtitle: item.subtitle ?? '',
                      trailing: Icon(
                        FontAwesomeIcons.infinity,
                        color: AppColors.green,
                        size: 22,
                      ),
                      ontap: () {},
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
