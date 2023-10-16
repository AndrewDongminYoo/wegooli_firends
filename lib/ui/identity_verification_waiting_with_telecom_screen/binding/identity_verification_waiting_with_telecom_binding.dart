// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_waiting_with_telecom_controller.dart';

/// A binding class for the IdentityVerificationWaitingWithTelecomScreen.
///
/// This class ensures that the IdentityVerificationWaitingWithTelecomController is created when the
/// IdentityVerificationWaitingWithTelecomScreen is first loaded.
class IdentityVerificationWaitingWithTelecomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationWaitingWithTelecomController());
  }
}
