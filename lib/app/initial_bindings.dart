// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '/core/network/network_info.dart';
import '/core/utils/pref_utils.dart';
import '/data/client/api_client.dart';

final initialBinding = InitialBindings();

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.putAsync(() async {
      await PrefUtils().initAppStorage();
      return PrefUtils.I;
    });
    Get.put(ApiClient());
    Get.put(NetworkInfo(Connectivity()));
  }
}
