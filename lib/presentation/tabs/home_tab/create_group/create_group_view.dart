import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/tabs/home_tab/create_group/controller/create_group_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/extensions/color.dart';
import '../../../../app/util/common_appbar.dart';
import '../../../../app/util/common_txt.dart';
import '../../../../app/util/gradient_button.dart';
import '../../../../app/util/util.dart';
import '../connect_ndividual/components/individual_tile.dart';

class CreategroupView extends GetView<CreateGroupController> {
  const CreategroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                CommonAppBar(
                  title: 'Create Group',
                  backIconTap: () {
                    Get.back();
                  },
                  homeIconTap: () {},
                ),
                SizedBox(height: Get.height * 0.03),
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
                        return Obx(
                          () => IndividualConnTile(
                            ontap: () {
                              controller.ontapforcolor(index);
                            },
                            bgColor: controller.selectedIndices.contains(index)
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
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Obx(() => Visibility(
                      visible: controller.selectedIndices.length > 1,
                      child: CustomGradientButton(
                        width: Get.width * 0.6,
                        onPressed: () {},
                        child: CommonText(
                          text: 'create new group',
                          fontSize: 18,
                          color: HexColor('262A38'),
                        ),
                      ),
                    )),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
