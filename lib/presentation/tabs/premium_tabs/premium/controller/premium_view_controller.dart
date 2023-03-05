import 'package:get/get.dart';
import 'package:i_connect/temp_data/premium_plan_data.dart';

class PremiumViewController extends GetxController {
  var myList = <PeremiumPlanData>[].obs;

  @override
  void onInit() {
    populateList();
    super.onInit();
  }

  populateList() {
    myList.assignAll(premiumPlanDAta);
    update();
  }
}
