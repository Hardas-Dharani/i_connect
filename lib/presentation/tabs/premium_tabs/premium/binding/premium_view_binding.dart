import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/premium_tabs/premium/controller/premium_view_controller.dart';

class PremiumViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PremiumViewController());
  }
}
