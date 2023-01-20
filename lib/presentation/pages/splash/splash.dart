import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/extensions/color.dart';
import 'package:i_connect/app/util/common_txt.dart';
import '../../../app/services/local_storage.dart';
import '../../../app/util/gradient_button.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/svg_image.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500)).whenComplete(
      () {
        // if (Get.find<LocalStorageService>().token != null) {
        //   Get.toNamed(Routes.stats);
        // } else {
        Get.toNamed(Routes.startScreen);
        // }
      },
    );
    return ScafoldedWidget(
      body: Center(
          child: SvgPicture.asset(
        Utils.getSvgFilePath("logo"),
      )),
    );
  }
}
