import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/tabs/home_tab/create_group/controller/create_group_controller.dart';
import 'package:i_connect/temp_data/contact_list_data.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/extensions/color.dart';
import '../../../../app/util/common_appbar.dart';
import '../../../../app/util/common_txt.dart';
import '../../../../app/util/gradient_button.dart';
import '../../../../app/util/tosate_message.dart';
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
                              backgroundImage: NetworkImage(item.imgURL ?? ""),
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
                        onPressed: () async {
                          await showDialog(
                              context: context,
                              barrierDismissible:
                                  false, // dialog is dismissible with a tap on the barrier
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Enter Group Name'),
                                  content: Row(
                                    children: [
                                      Expanded(
                                          child: TextField(
                                        autofocus: true,
                                        controller: controller.groupnametxt,
                                        decoration: const InputDecoration(
                                            labelText: 'Group Name',
                                            hintText: 'eg. Juventus F.C.'),
                                        onChanged: (value) {},
                                      ))
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const CommonText(
                                        text: 'Submit',
                                      ),
                                      onPressed: () {
                                        controller.addtoList(
                                          ContactListData(
                                            imgURL:
                                                'assets/images/i-connect-icon.png',
                                            isGroup: true,
                                            title: controller.groupnametxt.text,
                                            subtitle:
                                                '${controller.selectedIndices.length} members',
                                            trailing: DateFormat('hh:mm a')
                                                .format(DateTime.now()),
                                          ),
                                        );
                                        controller.addGroupLst();
                                        ToastMessage().message(
                                            'group created successfully');
                                        Get.back();
                                      },
                                    ),
                                  ],
                                );
                              });
                          Get.back();
                        },
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
