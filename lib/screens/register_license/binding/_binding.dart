// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the LoginRegisterLicensePageScreen.
///
/// This class ensures that the LoginRegisterLicensePageController is created when the
/// LoginRegisterLicensePageScreen is first loaded.
class LoginRegisterLicensePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginRegisterLicensePageController());
  }
}
