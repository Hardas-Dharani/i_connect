import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/extensions/color.dart';
import '../../../app/services/local_storage.dart';
import '../../../app/util/scaffold_widget.dart';
import '../../../app/util/svg_image.dart';
import '../../../app/util/util.dart';
import '../../../routes/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(milliseconds: 500)).whenComplete(
    //   () {
    //     // if (Get.find<LocalStorageService>().token != null) {
    //     //   Get.toNamed(Routes.stats);
    //     // } else {
    //     Get.toNamed(Routes.signInScreen);
    //     // }
    //   },
    // );
    return const ScafoldedWidget(
      body: Center(
        child: SvgImageAssetWidget(
          imagePath: 'logo',
        ),
      ),
    );
  }
}
