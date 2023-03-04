import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../temp_data/contact_list_data.dart';

class SearchViewController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController searchController = TextEditingController();
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
