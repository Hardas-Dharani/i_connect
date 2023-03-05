import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/app/util/gradient_button.dart';
import 'package:i_connect/app/util/scaffold_widget.dart';
import 'package:i_connect/presentation/pages/filter_page/controller/filter_page_controller.dart';

import '../../../routes/app_routes.dart';

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
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Expanded(
                    child: controller.selectedCountry != null
                        ? Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CommonText(
                                  text:
                                      'country: ${controller.selectedCountry}',
                                  weight: FontWeight.w500,
                                  fontSize: 18,
                                  color: AppColors.white,
                                ),
                                CommonText(
                                  text: 'State: ${controller.selectedState}',
                                  color: AppColors.white,
                                  weight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                                CommonText(
                                  text: 'City: ${controller.selectedCity}',
                                  color: AppColors.white,
                                  weight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                                SizedBox(height: Get.height * 0.02),
                                CustomGradientButton(
                                    width: Get.width * 0.3,
                                    onPressed: () {
                                      Get.toNamed(Routes.startScreen);
                                    },
                                    child: CommonText(
                                      text: 'Next',
                                      color: AppColors.black,
                                      weight: FontWeight.w500,
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
