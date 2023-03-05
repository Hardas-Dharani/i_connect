import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/pages/filter_page/controller/filter_page_controller.dart';

class FilterPageView extends GetView<FilterPageController> {
  const FilterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterPageController>(
      init: FilterPageController(),
      initState: (_) {},
      builder: (_) {
        return ScafoldedWidget(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        CommonText(
                          text: controller.selectedCountry,
                          color: AppColors.white,
                        ),
                        CommonText(
                          text: controller.selectedState,
                          color: AppColors.white,
                        ),
                        CommonText(
                          text: controller.selectedCity,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
