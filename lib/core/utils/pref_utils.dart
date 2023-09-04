// ignore: unused_import

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;
  final String themeData = 'WEGOOLI_THEME_DATA';
  final String tokenData = 'WEGOOLI_TOKEN_DATA';
  final String tokenIsEmpty = 'Token is not given.';

  static PrefUtils get storage => Get.isRegistered<PrefUtils>()
      ? Get.find<PrefUtils>()
      : Get.put(PrefUtils());

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  /// will clear all the data stored in preference
  void clearAll() async {
    _sharedPreferences!.clear();
  }

  Future<void> setData(String key, String value) {
    return _sharedPreferences!.setString(key, value);
  }

  String getData(String key, {String? defaultValue}) {
    try {
      return _sharedPreferences!.getString(key)!;
    } catch (e) {
      return defaultValue ?? '';
    }
  }

  Future<void> setThemeData(String value) {
    return setData(themeData, value);
  }

  String getThemeData() {
    return getData(themeData, defaultValue: 'primary');
  }

  String getToken() {
    final token =
        getData(tokenData, defaultValue: tokenIsEmpty);
    if (token == tokenIsEmpty) {
      print('[pref] get token: empty');
    } else {
      print('[pref] get token: $token');
    }
    return token;
  }

  void setToken(String token) {
    print('[pref] set token: $token');
    setData(tokenData, token);
  }
}
