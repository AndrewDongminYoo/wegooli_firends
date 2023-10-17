// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/app_navigation_controller.dart';

class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(AppNavigationController.new);
  }
}
