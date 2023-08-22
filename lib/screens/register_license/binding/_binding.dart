// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the RegisterLicensePageScreen.
///
/// This class ensures that the RegisterLicensePageController is created when the
/// RegisterLicensePageScreen is first loaded.
class RegisterLicensePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterLicensePageController());
  }
}
