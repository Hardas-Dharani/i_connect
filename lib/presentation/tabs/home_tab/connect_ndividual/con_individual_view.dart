import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../app/util/tosate_message.dart';
import '../../../../temp_data/contact_list_data.dart';
import 'components/individual_tile.dart';
import 'package:sizer/sizer.dart';
import '../../../../app/config/app_colors.dart';
import '../../../../app/util/common_appbar.dart';
import '../../../../app/util/common_txt.dart';
import '../../../../app/util/custom_bot_navbar.dart';
import '../../../../app/util/scaffold_widget.dart';
import '../../../../app/util/util.dart';
import 'coontroller/connect_indiv_controller.dart';

class ConnectIndividuallyView extends GetView<ConnectIndividualController> {
  const ConnectIndividuallyView({super.key});

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
                title: 'Connect Individually',
                backIconTap: () {
                  Get.back();
                },
                homeIconTap: () {},
              ),
              SizedBox(height: Get.height * 0.05),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonText(
                      text: 'Connect Individually',
                      color: AppColors.white,
                      fontSize: 20,
                      weight: FontWeight.w900,
                    ),
                    SizedBox(height: Get.height * 0.02),
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
                height: 60.h,
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: controller.myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.myList[index];
                      return IndividualConnTile(
                        ontap: () {
                          controller.addtoList(
                            ContactListData(
                              imgURL: item.imgURL,
                              isGroup: false,
                              title: item.title,
                              trailing: '02:00 pm',
                            ),
                          );
                          ToastMessage()
                              .message('contact connected successfully');
                          Get.back();
                        },
                        bgColor: index % 2 == 0
                            ? AppColors.lightBlack2
                            : Colors.transparent,
                        label: item.title ?? '',
                        trailing: SvgPicture.asset(
                          Utils.getSvgFilePath('icon-connect'),
                          color: AppColors.white.withOpacity(0.6),
                        ),
                        leading: CircleAvatar(
                          radius: 6.w,
                          backgroundImage: AssetImage(item.imgURL ?? ""),
                        ),
                      );
                      //  ListTile(
                      //   tileColor: index % 2 == 0
                      //       ? AppColors.lightBlack2
                      //       : Colors.transparent,
                      //   leading: CircleAvatar(
                      //     radius: 6.w,
                      //     backgroundImage: AssetImage(item.imgURL ?? ""),
                      //   ),
                      //   title: CommonText(
                      //     text: item.title ?? '',
                      //     fontSize: 16,
                      //     color: AppColors.white,
                      //     weight: FontWeight.w600,
                      //   ),
                      //   trailing: SvgPicture.asset(
                      //     Utils.getSvgFilePath(
                      //       'icon-connect',
                      //     ),
                      //     color: AppColors.white.withOpacity(0.6),
                      //   ),
                      // );
                      // ContactsTile(

                      //   leading: CircleAvatar(
                      //     radius: 6.w,
                      //     backgroundImage: AssetImage(item.imgURL ?? ""),
                      //   ),
                      //   bgColor: index % 2 == 0
                      //       ? AppColors.lightBlack2
                      //       : Colors.transparent,
                      //   label: item.title ?? "",
                      //   subtitle: CommonText(
                      //     text: item.subtitle ?? '',
                      //     fontSize: 14,
                      //     color: AppColors.white.withOpacity(0.6),
                      //     weight: FontWeight.w300,
                      //   ),
                      //   trailing: SvgPicture.asset(
                      //     Utils.getSvgFilePath(
                      //       'icon-connect',
                      //     ),
                      //     color: AppColors.white.withOpacity(0.6),
                      //   ),
                      // );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
