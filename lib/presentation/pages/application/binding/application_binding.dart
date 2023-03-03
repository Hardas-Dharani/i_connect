import 'package:get/get.dart';
import '../../../tabs/home_tab/contact_list/controller/contact_list_controller.dart';
import '../../../tabs/groups_tab/my_group/controller/my_groups_controller.dart';
import '../controller/application_controller.dart';

class ApplicationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationsController>(() => ApplicationsController());
    Get.lazyPut(() => ContactListController());
    Get.lazyPut(() => MyGroupsController());
  }
}
