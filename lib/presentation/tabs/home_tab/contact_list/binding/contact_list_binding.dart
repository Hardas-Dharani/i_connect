import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/controller/contact_list_controller.dart';

class ContactListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactListController());
  }
}
