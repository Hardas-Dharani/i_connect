import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'controller/start_page_controller.dart';
import '../../../app/config/app_colors.dart';
import '../../../app/extensions/color.dart';
import '../../../app/util/common_txt.dart';
import '../../../app/util/custom_button.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';

class StartPage extends GetView<StartPageController> {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * 0.2,
          ),
          SvgPicture.asset(
            Utils.getSvgFilePath("i-connect-icon"),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CommonText(
            text: 'Connect',
            fontSize: 21,
            color: AppColors.white,
          ),
          CommonText(
            text: 'Wirelessly & Effortlessly',
            fontSize: 21,
            color: AppColors.white,
          ),
          SizedBox(
            height: Get.height * 0.04,
          ),
          CustomGradientButton(
            onPressed: () {
              Get.toNamed(Routes.signUpScreen);
            },
            child: CommonText(
              text: 'SIGN UP FREE',
              fontSize: 18,
              color: HexColor('262A38'),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomButton(
            onPressed: () async {
              // await controller.loginWithGoogle();
              // Get.toNamed(Routes.signInScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  Utils.getSvgFilePath("icon-google"),
                ),
                CommonText(
                  text: "Continue with Google",
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomButton(
            onPressed: () async {
              // await controller.loginWithFacebook();
              // Get.toNamed(Routes.signInScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  Utils.getSvgFilePath("icons-facebook"),
                ),
                CommonText(
                  text: "Continue with Facebook",
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomButton(
            onPressed: () {
              Get.toNamed(Routes.signInScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  Utils.getSvgFilePath(
                    "icon-apple",
                  ),
                  color: AppColors.white,
                ),
                CommonText(
                  text: "Continue with Apple",
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.signInScreen);
            },
            child: CommonText(
              text: "Log in",
              color: AppColors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
