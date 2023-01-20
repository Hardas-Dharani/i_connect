import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:sizer/sizer.dart';

import '../../../app/config/app_colors.dart';
import '../../../app/services/local_storage.dart';
import '../../../app/util/common_txt.dart';
import '../../../app/util/eveleted_button.dart';
import '../../../app/util/loader.dart';
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
    return Scaffold(
        backgroundColor: AppColors.white,
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Center(
                          child: Image.asset(
                        Utils.getImagePath('logos'),
                        width: 180,
                      )),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      const CommonText(
                        text: "Sign In",
                        fontSize: 24,
                        weight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CommonText(
                        text: "Enter your email and your password!",
                        fontSize: 16,
                        color: AppColors.txtGrey,
                        weight: FontWeight.w300,
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: AppColors.greyColor,
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
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300),
                                      hintText: "Email ")))),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Obx(
                        () => Container(
                            decoration: BoxDecoration(
                              color: AppColors.greyColor,
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
                                    obscureText:
                                        controller.passwordVisible.value,
                                    decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon:
                                              !controller.passwordVisible.value
                                                  ? const Icon(Icons.visibility)
                                                  : const Icon(
                                                      Icons.visibility_off),
                                          onPressed: () {
                                            controller.passwordVisible.value =
                                                !controller
                                                    .passwordVisible.value;

                                            // Update the state i.e. toogle the state of passwordVisible variable
                                          },
                                        ),
                                        border: InputBorder.none,
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300),
                                        hintText: "Password ")))),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      SizedBox(
                        height: Get.height * 0.05,
                      ),
                      DefaultElevatedButton(
                        press: () async {
                          if (controller.formKey.currentState!.validate()) {
                            ShowDialogBox()
                                .showDialogBoxs(dialog, context, 'Loading...');
                            await controller.login();
                            if (!controller.authModal.error!) {
                              Get.find<LocalStorageService>().token =
                                  controller.authModal.body!.token.toString();
                              dialog.hide();
                              Get.toNamed(Routes.stats);
                            } else {
                              Get.snackbar(
                                "Error",
                                controller.authModal.message.toString(),
                                snackPosition: SnackPosition.TOP,
                                colorText: Colors.white,
                                borderRadius: 10,
                              );
                            }
                          }
                          // Get.toNamed(Routes.stats);
                        },
                        text: "Sign In",
                        textColor: AppColors.white,
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
