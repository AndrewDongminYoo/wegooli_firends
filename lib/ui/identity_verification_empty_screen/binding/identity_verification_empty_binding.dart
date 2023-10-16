// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_empty_controller.dart';

/// A binding class for the IdentityVerificationEmptyScreen.
///
/// This class ensures that the IdentityVerificationEmptyController is created when the
/// IdentityVerificationEmptyScreen is first loaded.
class IdentityVerificationEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationEmptyController());
  }
}
