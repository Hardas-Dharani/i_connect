import 'package:get/get.dart';
import 'package:i_connect/presentation/tabs/search_tab/search/controller/search_view_controller.dart';

class SearchViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchViewController());
  }
}
