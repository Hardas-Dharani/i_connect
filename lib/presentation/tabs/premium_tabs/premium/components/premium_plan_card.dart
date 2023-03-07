import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/config/app_colors.dart';
import '../../../../../app/util/common_txt.dart';
import '../../../../../app/util/gradient_button.dart';

class PremiumPlanCArd extends StatelessWidget {
  const PremiumPlanCArd({
    required this.gradient,
    required this.title,
    required this.price,
    required this.timePeriod,
    required this.description,
    this.ontap,
    Key? key,
  }) : super(key: key);
  final Gradient gradient;
  final String title;
  final String price;
  final String timePeriod;
  final String description;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: gradient,
        //  LinearGradient(colors: [
        //   HexColor('00C5E0'),
        //   HexColor('01A1D1'),
        //   HexColor('0181C4'),
        // ], transform: const GradientRotation(126)),
      ),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                  text: title, //'Basic',
                  color: AppColors.white,
                  fontSize: 20,
                  weight: FontWeight.w700,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CommonText(
                      text: price, //'from \$ 14.00',
                      color: AppColors.white,
                      fontSize: 18,
                      weight: FontWeight.w400,
                    ),
                    const SizedBox(height: 3),
                    CommonText(
                      text: timePeriod, //'for 1 DAY ',
                      color: AppColors.white,
                      fontSize: 18,
                      weight: FontWeight.w400,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          SizedBox(
            child: Column(
              children: [
                CommonText(
                  text: description,
                  color: AppColors.white,
                  fontSize: 20,
                  weight: FontWeight.w400,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height * 0.03),
          CustomGradientButton(
            onPressed: ontap,
            width: Get.width * 0.45,
            gradient:
                LinearGradient(colors: [AppColors.white, AppColors.white]),
            child: CommonText(
              text: 'BUY NOW',
              color: AppColors.lightBlack,
              fontSize: 18,
              weight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
