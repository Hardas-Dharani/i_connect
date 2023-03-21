import 'package:get/get.dart';

import '../coontroller/group_indiv_controller.dart';

class GroupIndividuallyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupIndividualController());
  }
}
