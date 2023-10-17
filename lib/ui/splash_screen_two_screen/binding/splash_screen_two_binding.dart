// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/splash_screen_two_controller.dart';

class SplashScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SplashScreenTwoController.new);
  }
}
