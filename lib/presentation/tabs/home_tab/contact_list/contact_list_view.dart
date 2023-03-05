import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_appbar.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/components/avatar_bottom_text.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/components/stacked_group_avatar.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/controller/contact_list_controller.dart';
import 'package:i_connect/presentation/tabs/home_tab/lets_connect/lets_connect_view.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/util/util.dart';
import '../../../../routes/app_routes.dart';
import 'components/contacts_tile.dart';

class ContactListView extends GetView<ContactListController> {
  const ContactListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CommonAppBar(
              title: 'Contact List',
              backIconTap: () {},
              homeIconTap: () {},
            ),
            SizedBox(height: Get.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvatarWithLabel(
                  avatar: CircleAvatar(
                    backgroundColor: AppColors.lightBlack2,
                    radius: 8.w,
                    child: Icon(
                      CupertinoIcons.person_add,
                      color: AppColors.green.withOpacity(0.6),
                      size: 9.w,
                    ),
                  ),
                  label: 'add individual',
                  labelColor: AppColors.white.withOpacity(0.6),
                  press: () {},
                ),
                const SizedBox(width: 24),
                AvatarWithLabel(
                  avatar: CircleAvatar(
                      backgroundColor: AppColors.lightBlack2,
                      radius: 8.w,
                      child: SvgPicture.asset(
                        Utils.getSvgFilePath('icon-group-add'),
                        color: AppColors.green.withOpacity(0.6),
                        fit: BoxFit.contain,
                      )),
                  label: 'add groups',
                  labelColor: AppColors.white.withOpacity(0.6),
                  press: () {},
                )
              ],
            ),
            SizedBox(height: Get.height * 0.02),
            SizedBox(
              height: 62.h,
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: controller.myList.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.myList[index];
                    return ContactsTile(
                      ontap: () {
                        Get.toNamed(Routes.letsConnectScreen,
                            arguments: ConnectionArguements(
                              contactListArguements: item,
                            ));
                      },
                      leading: item.isGroup == false
                          ? CircleAvatar(
                              radius: 6.w,
                              backgroundImage: AssetImage(item.imgURL ?? ""),
                            )
                          : StackedAvatras(imgURL: item.imgURL ?? ""),
                      bgColor: index % 2 == 0
                          ? AppColors.lightBlack2
                          : Colors.transparent,
                      label: item.title ?? "",
                      subtitle: item.isGroup == true
                          ? CommonText(
                              text: item.subtitle ?? '',
                              fontSize: 14,
                              color: AppColors.white.withOpacity(0.6),
                              weight: FontWeight.w300,
                            )
                          : Container(),
                      time: item.trailing ?? "",
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
