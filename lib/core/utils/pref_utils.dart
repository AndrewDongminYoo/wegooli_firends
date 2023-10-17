// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '/core/utils/logger.dart';

class PrefUtils {
  // ignore: prefer_constructors_over_static_methods
  static PrefUtils get I =>
      Get.isRegistered() ? Get.find() : Get.put(PrefUtils());

  // ignore: unused_field
  Box? _store;

  /// for initialling app local storage
  Future<void> initAppStorage() async {
    await Hive.initFlutter();
    _store = await Hive.openBox('WEGOOLI');
  }

  final String _tokenData = 'WEGOOLI_TOKEN_DATA';
  Future<void> clearAll() async {
    await _store?.clear();
  }

  Future<void> setData(String key, dynamic value) async {
    await _store?.put(key, value);
  }

  T getData<T>(String key, {required T defaultValue}) {
    try {
      return _store?.get(key)!;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<void>? deleteData(String key) => _store?.delete(key);

  String? getToken() {
    final token = _store?.get(_tokenData);
    if (token.isNullOrEmpty) {
      logger.i('[pref] GET token: empty');
    } else {
      logger.i('[pref] GET token: $token');
    }
    return token;
  }

  Future<void> setToken(String token) {
    logger.i('[pref] SET token: $token');
    return setData(_tokenData, token);
  }
}
