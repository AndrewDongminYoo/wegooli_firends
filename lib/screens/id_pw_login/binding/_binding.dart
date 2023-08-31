// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the IdPwLoginScreen.
///
/// This class ensures that the UserController is created when the
/// IdPwLoginScreen is first loaded.
class UserAuthBInding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
  }
}
