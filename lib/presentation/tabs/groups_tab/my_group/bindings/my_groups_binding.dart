import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/groups_tab/my_group/controller/my_groups_controller.dart';

class MyGroupsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyGroupsController());
  }
}
