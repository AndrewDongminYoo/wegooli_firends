import '../controller/register_license_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterLicenseScreen.
///
/// This class ensures that the RegisterLicenseController is created when the
/// RegisterLicenseScreen is first loaded.
class RegisterLicenseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterLicenseController());
  }
}
