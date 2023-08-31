// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the RegisterLicenseScreen.
///
/// This class ensures that the LicenseController is created when the
/// RegisterLicenseScreen is first loaded.
class RegisterLicenseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LicenseController());
  }
}
