// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the LoginRegisterSuccessPageScreen.
///
/// This class ensures that the LoginRegisterSuccessPageController is created when the
/// LoginRegisterSuccessPageScreen is first loaded.
class LoginRegisterSuccessPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginRegisterSuccessPageController());
  }
}
