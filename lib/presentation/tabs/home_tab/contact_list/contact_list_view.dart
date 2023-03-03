import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/avatar_bottom_text.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/controller/contact_list_controller.dart';
import 'package:sizer/sizer.dart';

class ContactListView extends GetView<ContactListController> {
  const ContactListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: Get.height * 0.14,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: AppColors.lightBlack2,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                  boxShadow: [
                    BoxShadow(color: AppColors.lightBlack, blurRadius: 2),
                    BoxShadow(color: AppColors.lightBlack, blurRadius: 2)
                  ]),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.back),
                        color: AppColors.white,
                      ),
                      CommonText(
                        text: 'Contact List',
                        fontSize: 18,
                        weight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.home),
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvatarWithLabel(
                  icons: CupertinoIcons.person_add,
                  iconColor: AppColors.green.withOpacity(0.6),
                  label: 'add individual',
                  labelColor: AppColors.white.withOpacity(0.6),
                  backgroundColor: AppColors.lightBlack2,
                  circleSize: 8.w,
                  iconSize: 9.w,
                  press: () {},
                ),
                const SizedBox(width: 24),
                AvatarWithLabel(
                  icons: CupertinoIcons.person_add,
                  iconColor: AppColors.green.withOpacity(0.6),
                  label: 'add groups',
                  labelColor: AppColors.white.withOpacity(0.6),
                  backgroundColor: AppColors.lightBlack2,
                  circleSize: 8.w,
                  iconSize: 9.w,
                  press: () {},
                )
              ],
            ),
            // Obx(() =>
            ListView.builder(
              shrinkWrap: true,
              itemCount: controller.myList.length,
              itemBuilder: (BuildContext context, int index) {
                var item = controller.myList[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(item.imgURL ?? ''),
                  ),
                  title: Text(item.title ?? ''),
                );
              },
            ),
            //),
          ],
        ),
      ),
    );
  }
}
