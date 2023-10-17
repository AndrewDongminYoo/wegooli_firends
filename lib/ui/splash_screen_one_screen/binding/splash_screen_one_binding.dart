// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/splash_screen_one_controller.dart';

class SplashScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SplashScreenOneController.new);
  }
}
