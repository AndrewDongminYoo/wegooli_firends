// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';
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
  final String? userToken;
  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  const MyApp({super.key, this.userToken});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: ThemeData.dark(useMaterial3: true),
        defaultTransition: Transition.fadeIn,
        locale: const Locale('ko'), // for setting localization strings
        fallbackLocale: const Locale('ko'),
        localizationsDelegates: Localized.localizationsDelegates,
        supportedLocales: Localized.supportedLocales,
        title: '위굴리 프렌즈',
        initialBinding: InitialBindings(),
        logWriterCallback: (String text, {bool isError = false}) =>
            isError ? Logger.log(text) : print('[DEBUG] $text'),
        navigatorObservers: [MyApp.routeObserver],
        initialRoute: AppRoutes.splashScreen,
        getPages: AppRoutes.pages);
  }
}
