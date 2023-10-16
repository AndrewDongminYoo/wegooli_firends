// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/splash_screen_one_controller.dart';

/// A binding class for the SplashScreenOneScreen.
///
/// This class ensures that the SplashScreenOneController is created when the
/// SplashScreenOneScreen is first loaded.
class SplashScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenOneController());
  }
}
