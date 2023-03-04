import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/util/util.dart';

import '../config/app_colors.dart';
import 'common_txt.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    required this.title,
    required this.backIconTap,
    required this.homeIconTap,
    super.key,
  });
  final String title;
  final Function()? backIconTap;
  final Function()? homeIconTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: ,
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
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: backIconTap,
                icon: const Icon(CupertinoIcons.back),
                color: AppColors.white,
              ),
              CommonText(
                text: title,
                fontSize: 18,
                weight: FontWeight.w500,
                color: AppColors.white,
              ),
              // SvgPicture.asset(
              //   Utils.getSvgFilePath("icon-home"),
              //   color: AppColors.white,
              // ),
              IconButton(
                onPressed: homeIconTap, //() {},
                icon: const Icon(CupertinoIcons.home),
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
