// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_terms_bottomsheet_controller.dart';

/// A binding class for the IdentityVerificationTermsBottomsheetScreen.
///
/// This class ensures that the IdentityVerificationTermsBottomsheetController is created when the
/// IdentityVerificationTermsBottomsheetScreen is first loaded.
class IdentityVerificationTermsBottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationTermsBottomsheetController());
  }
}
