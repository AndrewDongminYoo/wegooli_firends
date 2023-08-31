// ignore: unused_import

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;
  static PrefUtils get storage => Get.isRegistered<PrefUtils>()
      ? Get.find<PrefUtils>()
      : Get.put(PrefUtils());

  PrefUtils() {
    // init();
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  /// will clear all the data stored in preference
  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setData(String key, String value) {
    return _sharedPreferences!.setString(key, value);
  }

  String getData(String key) {
    try {
      return _sharedPreferences!.getString(key)!;
    } catch (e) {
      return 'primary';
    }
  }

  Future<void> setThemeData(String value) {
    return _sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return _sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }
}
