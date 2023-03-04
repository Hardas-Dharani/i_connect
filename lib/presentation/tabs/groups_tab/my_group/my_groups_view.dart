import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/presentation/tabs/groups_tab/my_group/components/my_groups_tile.dart';
import 'package:i_connect/presentation/tabs/groups_tab/my_group/controller/my_groups_controller.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/components/avatar_bottom_text.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/util/common_appbar.dart';
import '../../../../app/util/util.dart';
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
            SizedBox(height: Get.height * 0.03),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.centerLeft,
              child: AvatarWithLabel(
                avatar: CircleAvatar(
                    backgroundColor: AppColors.lightBlack2,
                    radius: 8.w,
                    child: SvgPicture.asset(
                      Utils.getSvgFilePath('icon-group-add'),
                      color: AppColors.green.withOpacity(0.6),
                    )),
                label: 'add group',
                labelColor: AppColors.white.withOpacity(0.6),
                press: () {},
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            SizedBox(
              height: 61.h,
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
                      trailing: SvgPicture.asset(
                        Utils.getSvgFilePath(
                          'icon-connect',
                        ),
                        color: AppColors.white.withOpacity(0.6),
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
