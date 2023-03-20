// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:i_connect/app/services/storage_service/local_storage.dart';
// import '../../../data/models/firebase_model/firebase_auth_model.dart';
// import '../../config/app_constants.dart';

// class UserStorage extends GetxController {
//   static UserStorage get to => Get.find();

//   final _isLogin = false.obs;

//   String token = '';

//   final _profile = FireBaseUserLoginResponseEntityModel().obs;
//   bool get isLogin => _isLogin.value;
//   FireBaseUserLoginResponseEntityModel get profile => _profile.value;
//   bool get hasToken => token.isNotEmpty;

//   @override
//   void onInit() {
//     super.onInit();
//     token = LocalStorageService.to.getString(StorageStrings.store_UserTokenKey);
//     var profileOffline =
//         LocalStorageService.to.getString(StorageStrings.store_UserProfileKey);
//     if (profileOffline.isNotEmpty) {
//       _isLogin.value = true;
//       _profile(FireBaseUserLoginResponseEntityModel.fromJson(
//           jsonDecode(profileOffline)));
//     }
//   }

//   Future<void> setToken(String value) async {
//     await LocalStorageService.to
//         .setString(StorageStrings.store_UserTokenKey, value);
//     token = value;
//   }

//   Future<String> getProfile() async {
//     if (token.isEmpty) return "";
//     return LocalStorageService.to
//         .getString(StorageStrings.store_UserProfileKey);
//   }

//   Future<void> saveProfile(FireBaseUserLoginResponseEntityModel profile) async {
//     _isLogin.value = true;
//     LocalStorageService.to
//         .setString(StorageStrings.store_UserProfileKey, jsonEncode(profile));
//     setToken(profile.accessToken!);
//   }

//   Future<void> onLogout() async {
//     await LocalStorageService.to.remove(StorageStrings.store_UserTokenKey);
//     await LocalStorageService.to.remove(StorageStrings.store_UserProfileKey);
//     _isLogin.value = false;
//     token = '';
//   }
// }
