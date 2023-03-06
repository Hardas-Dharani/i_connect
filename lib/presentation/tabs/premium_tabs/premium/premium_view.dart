import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/app/util/gradient_button.dart';
import 'package:i_connect/presentation/tabs/premium_tabs/premium/components/premium_plan_card.dart';
import 'package:sizer/sizer.dart';
import 'components/check_text.dart';
import 'controller/premium_view_controller.dart';
import '../../../../app/util/common_appbar.dart';

class PremiumView extends GetView<PremiumViewController> {
  const PremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 17.h),
                Container(
                  padding: const EdgeInsets.only(left: 24, right: 60),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: 'Free Trial',
                        color: AppColors.white,
                        fontSize: 16,
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: Get.height * 0.01),
                      CommonText(
                        text: 'Try Premium free for 1 month',
                        color: AppColors.white,
                        fontSize: 28,
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: Get.height * 0.01),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(child: CheckText(text: '2 USERS')),
                      SizedBox(width: 6),
                      Expanded(child: CheckText(text: '30 DAYS')),
                      SizedBox(width: 6),
                      Expanded(child: CheckText(text: '1HR DAY')),
                    ],
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                CustomGradientButton(
                  onPressed: () {},
                  child: CommonText(
                    text: 'GET PREMIUM',
                    color: AppColors.lightBlack,
                    fontSize: 18,
                    weight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: Get.height * 0.04),
                Container(
                  padding: const EdgeInsets.only(left: 24, right: 60),
                  alignment: Alignment.centerLeft,
                  child: CommonText(
                    text: 'Pick Your Premium',
                    color: AppColors.white,
                    fontSize: 16,
                    weight: FontWeight.w400,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: Get.height * 0.01),
                SizedBox(
                  height: 43.h * controller.myList.length,
                  child: Obx(
                    () => ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.myList.length,
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.myList[index];
                        return PremiumPlanCArd(
                          gradient: item.gradient!,
                          title: item.title ?? '',
                          price: 'from \$ ${item.price!.toString()}',
                          timePeriod: item.timePeriod ?? "",
                          description: item.description ?? "",
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          CommonAppBar(
            title: 'Premium',
            backIconTap: () {},
            homeIconTap: () {},
          ),
        ],
      ),
    );
  }
}
