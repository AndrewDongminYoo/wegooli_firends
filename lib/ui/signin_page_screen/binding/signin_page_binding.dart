// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/signin_page_controller.dart';

/// A binding class for the SigninPageScreen.
///
/// This class ensures that the SigninPageController is created when the
/// SigninPageScreen is first loaded.
class SigninPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninPageController());
  }
}
