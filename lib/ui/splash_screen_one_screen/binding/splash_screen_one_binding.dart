// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/splash_screen_one_controller.dart';

class SplashScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SplashScreenOneController.new);
  }
}
