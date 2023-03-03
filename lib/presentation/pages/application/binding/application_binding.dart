import 'package:get/get.dart';

import '../controller/application_controller.dart';

class ApplicationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationsController>(() => ApplicationsController());
  }
}
