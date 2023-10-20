// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_waiting_controller.dart';

class VerificationWaitingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerificationWaitingController.new);
  }
}
