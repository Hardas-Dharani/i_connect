import 'package:get/get.dart';
import 'package:i_connect/temp_data/individual_list.dart';

import '../../../../../temp_data/contact_list_data.dart';
import '../../contact_list/controller/contact_list_controller.dart';

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

  addtoList(ContactListData data) {
    ContactListController.to.myList.add(data);
    update();
  }
}
