// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/license_register_controller.dart';

class LicenseRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(LicenseRegisterController.new);
  }
}
