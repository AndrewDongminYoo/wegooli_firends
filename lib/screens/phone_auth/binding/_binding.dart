// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the PhoneAuthScreen.
///
/// This class ensures that the PhoneAuthController is created when the
/// PhoneAuthScreen is first loaded.
class PhoneAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneAuthController());
  }
}
