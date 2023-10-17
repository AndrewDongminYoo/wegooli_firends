// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_empty_controller.dart';

class IdentityVerificationEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(IdentityVerificationEmptyController.new);
  }
}
