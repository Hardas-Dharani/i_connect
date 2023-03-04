import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/premium_tabs/premium/controller/premium_view_controller.dart';
import 'package:i_connect/presentation/tabs/search_tab/search/controller/search_view_controller.dart';
import '../../../tabs/home_tab/contact_list/controller/contact_list_controller.dart';
import '../../../tabs/groups_tab/my_group/controller/my_groups_controller.dart';
import '../controller/application_controller.dart';

class ApplicationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationsController>(() => ApplicationsController());
    Get.lazyPut(() => ContactListController());
    Get.lazyPut(() => MyGroupsController());
    Get.lazyPut(() => SearchViewController());
    Get.lazyPut(() => PremiumViewController());
  }
}
