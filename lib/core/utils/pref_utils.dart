// ignore: unused_import

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _storage;
  static final String _themeData = 'WEGOOLI_THEME_DATA';
  static final String _tokenData = 'WEGOOLI_TOKEN_DATA';
  static final String _phoneData = 'WEGOOLI_PHONE_DATA';
  static final String _tokenIsEmpty = 'Token is not given.';

  static SharedPreferences get storage {
    if (_storage == null) {
      return Get.find<SharedPreferences>();
    }
    return _storage!;
  }

  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      Get.put<SharedPreferences>(value);
      _storage = value;
    });
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

  static String getThemeData() {
    return getData(_themeData, defaultValue: 'primary');
  }

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

  static String getPhoneNumber() {
    return getData(_phoneData, defaultValue: '+821012345678');
  }

  static Future<bool> setPhoneNumber(String phoneNumber) {
    return setData(_phoneData, phoneNumber);
  }
}
