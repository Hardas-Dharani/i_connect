import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/home_tab/create_group/controller/create_group_controller.dart';

class CreateGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateGroupController());
  }
}
