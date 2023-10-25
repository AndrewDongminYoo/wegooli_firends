// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '/core/network/network_info.dart';
import '/core/utils/pref_utils.dart';
import '/data/client/api_client.dart';

final initialBinding = InitialBindings();

class InitialBindings {
  void dependencies() {
    GetIt.I.registerSingletonAsync(() async {
      await PrefUtils().initAppStorage();
      return PrefUtils.I;
    });
    GetIt.I.registerSingleton(ApiClient());
    GetIt.I.registerSingleton(NetworkInfo(Connectivity()));
  }
}
