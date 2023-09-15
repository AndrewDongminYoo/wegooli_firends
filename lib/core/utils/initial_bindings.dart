// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(WegooliFriends());
    final connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
