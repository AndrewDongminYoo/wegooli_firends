// 📦 Package imports:
import 'package:catcher_2/catcher_2.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 🌎 Project imports:
import '/app/app_state_notifier.dart';
import '/core/utils/list_extensions.dart';
import '/routes/app_routes.dart';
import '/screens/home_page_screen/home_page_screen.dart';
import '/screens/signin_page_screen/signin_page_screen.dart';

final _appStateNotifier = AppStateNotifier.I;

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
      navigatorKey: Catcher2.navigatorKey,
      initialLocation: initialLocation,
      debugLogDiagnostics: true,
      refreshListenable: _appStateNotifier,
      errorBuilder: (context, state) => _appStateNotifier.loggedIn
          ? const HomePageScreen()
          : const SigninPageScreen(),
      routes: [
        ...pages.mapTo((r) => r.convertToRoute(_appStateNotifier)),
        ...dialogues
      ]),
);
