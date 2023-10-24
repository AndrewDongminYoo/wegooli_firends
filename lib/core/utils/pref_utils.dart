// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/instance_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';
import '/data/custom/user.model.dart';

class PrefUtils {
  // ignore: prefer_constructors_over_static_methods
  static PrefUtils get I =>
      Get.isRegistered() ? Get.find() : Get.put(PrefUtils());

  // ignore: unused_field
  Box? _store;

  /// 앱 로컬 스토리지 초기화 (비동기)
  Future<void> initAppStorage() async {
    await Hive.initFlutter();
    _store = await Hive.openBox('WEGOOLI');
  }

  final String _usersInfo = 'USER_INFO';
  final String _tokenData = 'WEGOOLI_TOKEN_DATA';
  final String _themeData = 'APP_THEME_MODE';

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

  ThemeMode get themeMode {
    final darkMode = _store?.get(_themeData);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _store?.delete(_themeData)
      : _store?.put(_themeData, mode == ThemeMode.dark);

  Future<void> setToken(String token) {
    logger.i('[pref] SET token: $token');
    return setData(_tokenData, token);
  }

  Future<void> saveCurrentUser(User user) {
    logger.i('[pref] set user: $user');
    return setData(_usersInfo, user);
  }
}
