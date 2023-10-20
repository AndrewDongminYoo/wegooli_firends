// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/identity_verification_terms_bottomsheet_controller.dart';

class VerificationTermsBottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(TermsOfUseController.new);
  }
}
