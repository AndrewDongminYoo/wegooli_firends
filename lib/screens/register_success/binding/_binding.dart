// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the RegisterSuccessPageScreen.
///
/// This class ensures that the RegisterSuccessPageController is created when the
/// RegisterSuccessPageScreen is first loaded.
class RegisterSuccessPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSuccessPageController());
  }
}
