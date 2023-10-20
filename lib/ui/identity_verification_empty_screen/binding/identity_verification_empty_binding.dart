// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_empty_controller.dart';

class VerificationEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerificationEmptyController.new);
  }
}
