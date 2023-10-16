// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_filled_controller.dart';

/// A binding class for the IdentityVerificationFilledScreen.
///
/// This class ensures that the IdentityVerificationFilledController is created when the
/// IdentityVerificationFilledScreen is first loaded.
class IdentityVerificationFilledBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationFilledController());
  }
}
