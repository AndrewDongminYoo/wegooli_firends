// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/identity_verification_filled_controller.dart';

class VerificationFilledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerificationFilledController.new);
  }
}
