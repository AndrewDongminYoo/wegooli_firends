// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/network/network_info.dart';
import '/core/utils/pref_utils.dart';
import '/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    final connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
