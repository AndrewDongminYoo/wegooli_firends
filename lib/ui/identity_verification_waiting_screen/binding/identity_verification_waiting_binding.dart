// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_waiting_controller.dart';

/// A binding class for the IdentityVerificationWaitingScreen.
///
/// This class ensures that the IdentityVerificationWaitingController is created when the
/// IdentityVerificationWaitingScreen is first loaded.
class IdentityVerificationWaitingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationWaitingController());
  }
}
