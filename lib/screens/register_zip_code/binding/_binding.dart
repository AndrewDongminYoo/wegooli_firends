// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

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
