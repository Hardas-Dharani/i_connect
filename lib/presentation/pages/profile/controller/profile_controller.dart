import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController profileNameController = TextEditingController();
  String name = 'JohnDoe1';

  @override
  void onInit() {
    profileNameController.text = name;
    super.onInit();
  }
}
