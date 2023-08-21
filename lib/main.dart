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
import '/l10n/messages.dart';
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
  final String? userToken;
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  const MyApp({super.key, this.userToken});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(visualDensity: VisualDensity.standard),
        darkTheme: ThemeData.dark(useMaterial3: true),
        defaultTransition: Transition.fadeIn,
        translations: LocaleMessages(),
        locale: const Locale('ko'), // for setting localization strings
        fallbackLocale: Locale('ko'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        title: 'wegooli_friends',
        initialBinding: InitialBindings(),
        logWriterCallback: (String text, {bool isError = false}) => print(text),
        navigatorObservers: [MyApp.routeObserver],
        initialRoute: AppRoutes.appGateway,
        getPages: AppRoutes.pages);
  }
}
