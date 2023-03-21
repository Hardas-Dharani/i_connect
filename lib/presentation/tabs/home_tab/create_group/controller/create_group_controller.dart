import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:i_connect/app/services/storage_service/local_storage.dart';
import 'package:i_connect/presentation/tabs/home_tab/contact_list/controller/contact_list_controller.dart';
import 'package:i_connect/temp_data/contact_list_data.dart';
import 'package:i_connect/temp_data/individual_list.dart';

class CreateGroupController extends GetxController {
  var myList = <IndividualData>[].obs;
  RxSet<int> selectedIndices = <int>{}.obs;
  TextEditingController groupnametxt = TextEditingController();
  addGroupLst() async {
    for (var element in selectedIndices) {
      ContactListController.to.grouplst.add(myList[element]);
    }
    await LocalStorageService.to
        .setString('grouplst', json.encode(ContactListController.to.grouplst));
  }

  addtoList(ContactListData data) async {
    ContactListController.to.myList.add(data);
    await LocalStorageService.to
        .setString('lst', json.encode(ContactListController.to.myList));

    update();
  }

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  ontapforcolor(index) {
    if (selectedIndices.contains(index)) {
      // Deselect the item if it is already selected
      selectedIndices.remove(index);
    } else {
      // Select the item if it is not already selected
      selectedIndices.add(index);
    }
    update();
  }

  populateList() {
    myList.assignAll(myIndividualList);
    update();
  }
}
