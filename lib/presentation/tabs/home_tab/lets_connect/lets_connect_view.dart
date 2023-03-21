import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
import '../../../../app/util/util.dart';
import '../../../../routes/app_routes.dart';
import '../../../../temp_data/individual_list.dart';
import '../group_individual_lst/group_individual_view.dart';
import 'components/connnection_tile.dart';
import 'controller/lets_connect_controller.dart';

class ConnectionArguements {
  ContactListData? contactListArguements;
  List<IndividualData>? contactListDataArguements;
  ConnectionArguements(
      {this.contactListArguements, this.contactListDataArguements});
}

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
                title: 'Let\'s Connect',
                backIconTap: () {
                  Get.back();
                },
                homeIconTap: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                    groupInd: args.contactListDataArguements,
                                    radius: 10.w,
                                    groupLetConnect: true,
                                  ),
                                ),
                                const Spacer()
                              ]))
                        : CircleAvatar(
                            radius: 10.w,
                            backgroundImage: NetworkImage(
                                args.contactListArguements!.imgURL ?? ""),
                          ),
                    SizedBox(height: Get.height * 0.013),
                    CommonText(
                      text: args.contactListArguements!.title ?? '',
                      color: AppColors.white,
                      fontSize: 18,
                      weight: FontWeight.w600,
                    ),
                    SizedBox(height: Get.height * 0.013),
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
                height: 42.h,
                child: Obx(
                  () => ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: controller.myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.myList[index];
                      return ConnectionTile(
                        leading: StackedAvatras(
                          imgURL: item.imgURL ?? "",
                          groupInd: args.contactListDataArguements,
                        ),
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
                        trailing: SvgPicture.asset(
                          Utils.getSvgFilePath(
                            'icon-connect',
                          ),
                          color: AppColors.white.withOpacity(0.6),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.025),
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
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.groupIndiviConnectScreen,
                                  arguments: GroupIndivd(
                                      groupLstGroupIndvd:
                                          args.contactListDataArguements));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CommonText(
                                  text: 'Connect Individiually',
                                  color: AppColors.white,
                                  fontSize: 16,
                                ),
                                const SizedBox(width: 15),
                                Icon(
                                  CupertinoIcons.chevron_down,
                                  color: AppColors.white,
                                ),
                              ],
                            ),
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
