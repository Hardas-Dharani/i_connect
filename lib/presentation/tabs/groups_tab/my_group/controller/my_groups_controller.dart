import 'package:get/get.dart';
import 'package:i_connect/temp_data/my_groups_list.dart';

class MyGroupsController extends GetxController {
  var myList = <MyGroupsData>[].obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    myList.assignAll(myGroupsList);
    update();
  }
}
