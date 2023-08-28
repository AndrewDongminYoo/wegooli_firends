// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the IdPwLoginScreen.
///
/// This class ensures that the IdPwLoginController is created when the
/// IdPwLoginScreen is first loaded.
class IdPwLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdPwLoginController());
  }
}
