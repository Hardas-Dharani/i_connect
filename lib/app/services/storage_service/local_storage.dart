import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class LocalStorageService extends GetxService {
//   SharedPreferences? _sharedPreferences;
//   var scaffoldKey = GlobalKey<ScaffoldState>();
//   var scaffoldKey1 = GlobalKey<ScaffoldState>();
//   String? get token {
//     final rawJson = _sharedPreferences?.getString(_Key.token.toString());
//     if (rawJson == null) {
//       return null;
//     }
//     return rawJson;
//   }

//   set token(String? value) {
//     if (value != null) {
//       _sharedPreferences?.setString(_Key.token.toString(), value);
//     } else {
//       _sharedPreferences?.remove(_Key.token.toString());
//     }
//   }

//   User? get user {
//     final rawJson = _sharedPreferences?.getString(_Key.user.toString());
//     if (rawJson == null) {
//       return null;
//     }
//     Map<String, dynamic> map = jsonDecode(rawJson);
//     return User.fromJson(map);
//   }

//   set user(User? value) {
//     if (value != null) {
//       _sharedPreferences?.setString(
//           _Key.user.toString(), json.encode(value.toJson()));
//     } else {
//       _sharedPreferences?.remove(_Key.user.toString());
//     }
//   }

//   Future<LocalStorageService> init() async {
//     _sharedPreferences = await SharedPreferences.getInstance();
//     return this;
//   }
// }

// enum _Key { user, token }
class LocalStorageService extends GetxService {
  static LocalStorageService get to => Get.find();
  late final SharedPreferences _prefs;

  Future<LocalStorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool> setList(String key, List<String> value) async {
    return await _prefs.setStringList(key, value);
  }

  String getString(String key) {
    return _prefs.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _prefs.getBool(key) ?? false;
  }

  List<String> getList(String key) {
    return _prefs.getStringList(key) ?? [];
  }

  Future<bool> remove(String key) async {
    return await _prefs.remove(key);
  }
}
