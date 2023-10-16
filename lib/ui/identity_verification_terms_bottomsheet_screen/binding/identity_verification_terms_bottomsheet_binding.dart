// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_terms_bottomsheet_controller.dart';

class IdentityVerificationTermsBottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IdentityVerificationTermsBottomsheetController());
  }
}
