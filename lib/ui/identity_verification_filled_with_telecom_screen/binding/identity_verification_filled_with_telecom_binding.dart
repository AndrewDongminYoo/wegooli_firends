// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_filled_with_telecom_controller.dart';

/// A binding class for the IdentityVerificationFilledWithTelecomScreen.
///
/// This class ensures that the IdentityVerificationFilledWithTelecomController is created when the
/// IdentityVerificationFilledWithTelecomScreen is first loaded.
class IdentityVerificationFilledWithTelecomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationFilledWithTelecomController());
  }
}
