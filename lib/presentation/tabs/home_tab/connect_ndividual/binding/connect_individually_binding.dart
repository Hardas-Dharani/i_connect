import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/home_tab/connect_ndividual/coontroller/connect_indiv_controller.dart';

class ConnectIndividuallyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectIndividualController());
  }
}
