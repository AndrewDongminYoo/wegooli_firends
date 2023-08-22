// 🌎 Project imports:
import '/core/app_export.dart';
import 'package:wegooli_friends/wegooli_friends.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
