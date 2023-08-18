// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the LoginWithIdAndPasswordScreen.
///
/// This class ensures that the LoginWithIdAndPasswordController is created when the
/// LoginWithIdAndPasswordScreen is first loaded.
class LoginWithIdAndPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithIdAndPasswordController());
  }
}
