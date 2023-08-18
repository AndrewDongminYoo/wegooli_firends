// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the SplashLoadingScreen.
///
/// This class ensures that the SplashLoadingController is created when the
/// SplashLoadingScreen is first loaded.
class SplashLoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashLoadingController());
  }
}
