import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/util/check_box.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/extensions/color.dart';
import '../../../app/services/local_storage.dart';
import '../../../app/util/common_txt.dart';
import '../../../app/util/eveleted_button.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/loader.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';
import 'controller/sign_in_controller.dart';

class SigInScreen extends GetView<SigninController> {
  const SigInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SimpleFontelicoProgressDialog dialog = SimpleFontelicoProgressDialog(
      context: context,
      barrierDimisable: false,
    );
    return ScafoldedWidget(
        body: SafeArea(
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SingleChildScrollView(
                  // physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      Utils.getSvgFilePath("i-connect-icon"),
                    ),
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
                  Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              controller: controller.emailTxt,
                              readOnly: false,
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return 'Enter email';
                              //   }
                              //   return null;
                              // },
                              cursorColor: AppColors.darkGreyColor,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.auto,
                                labelText: 'Email',
                                floatingLabelStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColors.txtGrey),
                                labelStyle: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w300),
                                // hintStyle: TextStyle(
                                //     fontSize: 14, fontWeight: FontWeight.w300),
                                // hintText: "Email ",
                              )))),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Obx(
                    () => Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 5),
                            child: TextFormField(
                                controller: controller.passTxt,
                                readOnly: false,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter Password';
                                  }
                                  return null;
                                },
                                cursorColor: AppColors.darkGreyColor,
                                obscureText: controller.passwordVisible.value,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: !controller.passwordVisible.value
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off),
                                    onPressed: () {
                                      controller.passwordVisible.value =
                                          !controller.passwordVisible.value;

                                      // Update the state i.e. toogle the state of passwordVisible variable
                                    },
                                  ),
                                  border: InputBorder.none,
                                  floatingLabelAlignment:
                                      FloatingLabelAlignment.start,
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  labelText: 'Password',
                                  floatingLabelStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.txtGrey),
                                  labelStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                  // hintStyle: const TextStyle(
                                  //     fontSize: 14,
                                  //     fontWeight: FontWeight.w300),
                                  // hintText: "Password ",
                                )))),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Obx(
                    () => TOCCheckBox(
                      label: 'TOC agreement',
                      labelFontSize: 14,
                      value: controller.agree.value,
                      onchanged: (value) {
                        controller.oncheckchange(value);
                      },
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  CustomGradientButton(
                    onPressed: () {},
                    child: CommonText(
                      text: 'Login',
                      fontSize: 18,
                      color: HexColor('262A38'),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                ],
              )),
            ))
          ],
        ),
      ),
    ));
  }
}
