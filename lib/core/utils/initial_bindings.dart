// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(WegooliFriends());
    final connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
