// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/splash_screen_two_controller.dart';

class SplashScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SplashScreenTwoController.new);
  }
}
