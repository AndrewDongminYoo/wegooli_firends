// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the LoginValidatePhoneAuthScreen.
///
/// This class ensures that the LoginValidatePhoneAuthController is created when the
/// LoginValidatePhoneAuthScreen is first loaded.
class LoginValidatePhoneAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ValidatePhoneController());
  }
}
