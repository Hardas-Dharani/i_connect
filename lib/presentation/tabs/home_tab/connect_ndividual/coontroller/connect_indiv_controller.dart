import 'package:get/get.dart';
import 'package:i_connect/temp_data/individual_list.dart';

class ConnectIndividualController extends GetxController {
  var myList = <IndividualData>[].obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    myList.assignAll(myIndividualList);
    update();
  }
}
