import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/util/custom_bot_navbar.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/components/stacked_group_avatar.dart';
import 'package:i_connect/temp_data/contact_list_data.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/util/common_appbar.dart';
import '../../../../app/util/common_txt.dart';
import '../../../../app/util/gradient_button.dart';
import 'components/connnection_tile.dart';
import 'controller/lets_connect_controller.dart';

class LetsConnectView extends GetView<LetsConnectController> {
  final ConnectionArguements args = Get.arguments;
  LetsConnectView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CommonAppBar(
                title: 'Let\'s Connct',
                backIconTap: () {
                  Get.back();
                },
                homeIconTap: () {},
              ),
              SizedBox(height: Get.height * 0.04),
              Center(
                child: Column(
                  children: [
                    args.contactListArguements!.isGroup == true
                        ? Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Spacer(),
                                Expanded(
                                  child: StackedAvatras(
                                    imgURL:
                                        args.contactListArguements!.imgURL ??
                                            '',
                                    radius: 10.w,
                                  ),
                                ),
                                const Spacer(),
                              ],
                            ),
                          )
                        : CircleAvatar(
                            radius: 10.w,
                            backgroundImage: AssetImage(
                                args.contactListArguements!.imgURL ?? ""),
                          ),
                    const SizedBox(height: 12),
                    CommonText(
                      text: args.contactListArguements!.title ?? '',
                      color: AppColors.white,
                      fontSize: 18,
                      weight: FontWeight.w600,
                    ),
                    const SizedBox(height: 12),
                    Icon(
                      FontAwesomeIcons.plugCircleBolt,
                      size: 12.w,
                      color: AppColors.green,
                    )
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              SizedBox(
                height: Get.height * 0.38,
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: controller.myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.myList[index];
                      return ConnectionTile(
                        leading: StackedAvatras(imgURL: item.imgURL ?? ""),
                        bgColor: index % 2 == 0
                            ? AppColors.lightBlack2
                            : Colors.transparent,
                        label: item.title ?? "",
                        subtitle: CommonText(
                          text: item.subtitle ?? '',
                          fontSize: 14,
                          color: AppColors.white.withOpacity(0.6),
                          weight: FontWeight.w300,
                        ),
                        trailing: Icon(
                          FontAwesomeIcons.infinity,
                          color: AppColors.green,
                          size: 22,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              args.contactListArguements!.isGroup == true
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomGradientButton(
                            onPressed: () {},
                            width: Get.width * 0.30,
                            height: 46,
                            borderRadius: BorderRadius.circular(7),
                            child: CommonText(
                              text: 'Connect',
                              color: AppColors.lightBlack,
                              fontSize: 16,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CommonText(
                                text: 'Connect Individiually',
                                color: AppColors.white,
                                fontSize: 16,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.chevron_down,
                                  color: AppColors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : CustomGradientButton(
                      onPressed: () {},
                      width: Get.width * 0.40,
                      height: 46,
                      borderRadius: BorderRadius.circular(7),
                      child: CommonText(
                        text: 'Connect',
                        color: AppColors.lightBlack,
                        fontSize: 16,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class ConnectionArguements {
  ContactListData? contactListArguements;
  ConnectionArguements({this.contactListArguements});
}
