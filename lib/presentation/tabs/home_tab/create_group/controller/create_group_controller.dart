import 'package:get/get.dart';
import 'package:i_connect/temp_data/individual_list.dart';

class CreateGroupController extends GetxController {
  var myList = <IndividualData>[].obs;
  RxSet<int> selectedIndices = <int>{}.obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    myList.assignAll(myIndividualList);
    update();
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
}
