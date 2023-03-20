import 'package:get/get.dart';
import 'package:i_connect/temp_data/contact_list_data.dart';

class ContactListController extends GetxController {
  static ContactListController get to => Get.find();
  var myList = <ContactListData>[].obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    myList.assignAll(contactListData);
    update();
  }
}
