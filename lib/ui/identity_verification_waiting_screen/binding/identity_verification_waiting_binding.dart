// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/identity_verification_waiting_controller.dart';

class VerificationWaitingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(VerificationWaitingController.new);
  }
}
