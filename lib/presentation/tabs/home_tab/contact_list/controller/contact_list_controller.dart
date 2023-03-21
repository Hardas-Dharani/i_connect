import 'package:get/get.dart';
import 'package:i_connect/app/services/storage_service/local_storage.dart';
import 'package:i_connect/temp_data/contact_list_data.dart';

import '../../../../../temp_data/individual_list.dart';

class ContactListController extends GetxController {
  static ContactListController get to => Get.find();
  var myList = <ContactListData>[].obs;
  var grouplst = <IndividualData>[].obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    var s = LocalStorageService.to.getString("grouplst");
    myList.assignAll(contactListData);
    update();
  }
}
