import 'package:get/get.dart';

import '../controller/sign_in_controller.dart';

class SiginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninController());
  }
}
