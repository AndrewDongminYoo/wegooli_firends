// ignore: unused_import

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      Get.put<SharedPreferences>(value);
      _storage = value;
    });
  }
  static SharedPreferences? _storage;
  static const String _themeData = 'WEGOOLI_THEME_DATA';
  static const String _tokenData = 'WEGOOLI_TOKEN_DATA';
  static const String _phoneData = 'WEGOOLI_PHONE_DATA';
  static const String _tokenIsEmpty = 'Token is not given.';

  static SharedPreferences get storage {
    if (_storage == null) {
      return Get.find<SharedPreferences>();
    }
    return _storage!;
  }

  /// will clear all the data stored in preference
  static Future<bool> clearAll() async {
    return storage.clear();
  }

  static Future<bool> setData(String key, String value) {
    return storage.setString(key, value);
  }

  static String getData(String key, {String? defaultValue}) {
    try {
      return storage.getString(key)!;
    } catch (e) {
      return defaultValue ?? '';
    }
  }

  static Future<bool> setThemeData(String value) {
    return setData(_themeData, value);
  }

  static String get themeData => getData(_themeData, defaultValue: 'primary');

  static String getToken() {
    final token = getData(_tokenData, defaultValue: _tokenIsEmpty);
    if (token == _tokenIsEmpty) {
      print('[pref] get token: empty');
    } else {
      print('[pref] get token: $token');
    }
    return token;
  }

  static Future<bool> setToken(String token) {
    print('[pref] set token: $token');
    return setData(_tokenData, token);
  }

  static String get phoneNumber =>
      getData(_phoneData, defaultValue: '+821012345678');

  static set phoneNumber(String phoneNumber) =>
      setData(_phoneData, phoneNumber);
}
