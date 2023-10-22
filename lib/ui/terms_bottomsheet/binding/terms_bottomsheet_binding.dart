// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/terms_bottomsheet_controller.dart';

class VerificationTermsBottomsheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(TermsOfUseController.new);
  }
}
