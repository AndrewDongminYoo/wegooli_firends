// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:intl/date_symbol_data_local.dart';

// 🌎 Project imports:
import 'core/app_export.dart';

void main() {
  Get.put(EnvConfig());
  Get.find<EnvConfig>().initConfig();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    initializeDateFormatting().then((_) => runApp(MyApp()));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(visualDensity: VisualDensity.standard),
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        fallbackLocale: Locale('ko', 'KR'),
        title: 'wegooli_friends',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.appNavigation,
        getPages: AppRoutes.pages);
  }
}
