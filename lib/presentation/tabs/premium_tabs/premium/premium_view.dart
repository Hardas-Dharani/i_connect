import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      child: SingleChildScrollView(
          child: Column(
        children: [
          CommonAppBar(
            title: 'Premium',
            backIconTap: () {},
            homeIconTap: () {},
          ),
          SizedBox(height: Get.height * 0.04),
        ],
      )),
    );
  }
}
