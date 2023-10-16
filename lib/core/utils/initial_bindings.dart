// 🌎 Project imports:
import '/core/app_export.dart';
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
