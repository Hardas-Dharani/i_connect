import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/search_tab/search/controller/search_view_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../../app/config/app_colors.dart';
import '../../../../app/util/common_appbar.dart';
import '../../../../app/util/common_txt.dart';
import '../../home_tab/contact_list/components/contacts_tile.dart';
import '../../home_tab/contact_list/components/stacked_group_avatar.dart';

class SearchView extends GetView<SearchViewController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              CommonAppBar(
                title: 'Search',
                backIconTap: () {},
                homeIconTap: () {},
              ),
              SizedBox(height: Get.height * 0.04),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  color: AppColors.lightBlack2,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  controller: controller.searchController,
                  readOnly: false,
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return 'Enter Password';
                  //   }
                  //   return null;
                  // },
                  cursorColor: AppColors.green,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: AppColors.green,
                      ),
                      onPressed: () {},
                    ),
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.green.withOpacity(0.7)),
                    hintText: "Search ",
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              Obx(
                () => SizedBox(
                  height: 65.h,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: controller.myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var item = controller.myList[index];
                      return ContactsTile(
                        ontap: () {},
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
      ),
    );
  }
}
