import 'package:get/get.dart';
import 'package:i_connect/temp_data/connection_info.dart';

class LetsConnectController extends GetxController {
  var myList = <ConnnectionData>[].obs;
  var isopened = false.obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    myList.assignAll(connectionDAta);
    update();
  }

  onExpansionChanged(bool value) {
    isopened.value = value;
    update();
  }
}
