import 'package:get/get.dart';
import 'package:i_connect/presentation/pages/splash/controller/start_page_controller.dart';

class StartPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartPageController());
  }
}
