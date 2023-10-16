// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/license_register_controller.dart';

/// A binding class for the LicenseRegisterScreen.
///
/// This class ensures that the LicenseRegisterController is created when the
/// LicenseRegisterScreen is first loaded.
class LicenseRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LicenseRegisterController());
  }
}
