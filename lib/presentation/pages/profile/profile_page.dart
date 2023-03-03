import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:i_connect/presentation/pages/profile/controller/profile_controller.dart';
import 'package:sizer/sizer.dart';
import '../../../app/extensions/color.dart';
import '../../../app/util/scaffold_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScafoldedWidget(
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: CommonText(
                                    text: 'Cancel',
                                    fontSize: 14,
                                    color: AppColors.white,
                                  ),
                                ),
                                CommonText(
                                  text: 'Edit Profile',
                                  fontSize: 18,
                                  weight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: CommonText(
                                    text: 'Save',
                                    fontSize: 14,
                                    color: AppColors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                              radius: 22.w,
                              backgroundColor: AppColors.white,
                              child: Icon(
                                Icons.person,
                                color: AppColors.darkGreyColor,
                                size: 28.w,
                              ),
                            ),
                            Positioned(
                              left: 31.w,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 12.w,
                                  width: 12.w,
                                  decoration: BoxDecoration(
                                    color: HexColor('00FFA8'),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: AppColors.white,
                                    size: 6.w,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        CommonText(
                          text: 'Change Photo',
                          color: AppColors.white.withOpacity(0.7),
                          fontSize: 18,
                          weight: FontWeight.w300,
                        ),
                        SizedBox(
                          height: Get.height * 0.04,
                        ),
                        TextFormField(
                          controller: controller.profileNameController,
                          readOnly: false,
                          cursorColor: AppColors.white.withOpacity(0.7),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          // validator: (value) {
                          //   if (value!.isEmpty) {
                          //     return 'Enter email';
                          //   }
                          //   return null;
                          // },
                          decoration: InputDecoration(
                            disabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.white.withOpacity(0.7)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.white.withOpacity(0.7)),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.white.withOpacity(0.7)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.white.withOpacity(0.7)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Get.height * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: CommonText(
                            text:
                                'This could be your first name or nickname, it is how you\'ll appear on I-Connect',
                            color: AppColors.white.withOpacity(0.7),
                            fontSize: 15,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
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
