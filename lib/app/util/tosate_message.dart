import 'package:fluttertoast/fluttertoast.dart';

import '../config/app_colors.dart';

class ToastMessage {
  message(String message) {
    Fluttertoast.showToast(
      backgroundColor: AppColors.green,
      textColor: AppColors.darkGreyColor,
      timeInSecForIosWeb: 1,
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
