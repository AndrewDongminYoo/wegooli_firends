// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/splash_screen_two_controller.dart';

/// A binding class for the SplashScreenTwoScreen.
///
/// This class ensures that the SplashScreenTwoController is created when the
/// SplashScreenTwoScreen is first loaded.
class SplashScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenTwoController());
  }
}
