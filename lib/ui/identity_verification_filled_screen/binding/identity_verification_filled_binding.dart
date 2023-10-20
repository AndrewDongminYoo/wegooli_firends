// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_filled_controller.dart';

class VerificationFilledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerificationFilledController.new);
  }
}
