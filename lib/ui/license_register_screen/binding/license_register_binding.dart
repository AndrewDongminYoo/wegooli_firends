// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/license_register_controller.dart';

class LicenseRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(LicenseRegisterController.new);
  }
}
