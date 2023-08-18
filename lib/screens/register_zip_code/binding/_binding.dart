// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the LoginRegisterZipCodeScreen.
///
/// This class ensures that the LoginRegisterZipCodeController is created when the
/// LoginRegisterZipCodeScreen is first loaded.
class LoginRegisterZipCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginRegisterZipCodeController());
  }
}
