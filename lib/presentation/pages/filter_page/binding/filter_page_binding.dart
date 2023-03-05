import 'package:get/get.dart';
import 'package:i_connect/presentation/pages/filter_page/controller/filter_page_controller.dart';

class FilterPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilterPageController());
  }
}
