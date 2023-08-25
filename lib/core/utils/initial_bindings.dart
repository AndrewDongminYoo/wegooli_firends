// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:wegooli_friends/data/data.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(WegooliFriends());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
