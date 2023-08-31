// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// A binding class for the RegisterSuccessScreen.
///
/// This class ensures that the RegisterSuccessController is created when the
/// RegisterSuccessScreen is first loaded.
class RegisterSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterSuccessController());
  }
}
