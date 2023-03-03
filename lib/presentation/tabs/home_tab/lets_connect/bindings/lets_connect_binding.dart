import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/home_tab/lets_connect/controller/lets_connect_controller.dart';

class LetsConnectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LetsConnectController());
  }
}
