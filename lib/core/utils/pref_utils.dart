// ignore: unused_import

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import '/lib.dart';

class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      Get.put<SharedPreferences>(value);
      _storage = value;
    });
  }
  static SharedPreferences? _storage;
  static const String _tokenData = 'WEGOOLI_TOKEN_DATA';
  static const String _phoneData = 'WEGOOLI_PHONE_DATA';
  static const String _termsOfUseData = 'TERMS_OF_USE';

  static SharedPreferences get storage {
    print('SharedPreference Initialized');
    return _storage ??= Get.find<SharedPreferences>();
  }

  /// will clear all the data stored in preference
  static Future<bool> clearAll() async {
    return storage.clear();
  }

  static Future<bool> setData(String key, String value) {
    return storage.setString(key, value);
  }

  static String? getDataOrNull(String key) => storage.getString(key);

  static String getData(String key, {String? defaultValue}) {
    try {
      return getDataOrNull(key)!;
    } catch (e) {
      return defaultValue ?? '';
    }
  }

  static String? getToken() {
    final token = getDataOrNull(_tokenData);
    if (token == null || token.isEmpty) {
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

  static void saveAgreements(List<Term> agreement) {
    final cache = agreement.map((a) => '${a.name}: ${a.agree.toYN}');
    storage.setStringList(_termsOfUseData, cache.toList());
  }
}
