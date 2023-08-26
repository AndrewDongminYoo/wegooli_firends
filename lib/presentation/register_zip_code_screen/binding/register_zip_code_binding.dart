import '../controller/register_zip_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisterZipCodeScreen.
///
/// This class ensures that the RegisterZipCodeController is created when the
/// RegisterZipCodeScreen is first loaded.
class RegisterZipCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterZipCodeController());
  }
}
