import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:sizer/sizer.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: Get.height * 0.14,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: AppColors.lightBlack2,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(33),
                    bottomRight: Radius.circular(33),
                  ),
                  boxShadow: [
                    BoxShadow(color: AppColors.lightBlack, blurRadius: 2),
                    BoxShadow(color: AppColors.lightBlack, blurRadius: 2)
                  ]),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.back),
                        color: AppColors.white,
                      ),
                      CommonText(
                        text: 'Contact List',
                        fontSize: 18,
                        weight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.home),
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            Row(children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.lightBlack2,
                    radius: 8.w,
                    child: Icon(
                      CupertinoIcons.person_add,
                      color: AppColors.green.withOpacity(0.6),
                      size: 9.w,
                    ),
                  ),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
