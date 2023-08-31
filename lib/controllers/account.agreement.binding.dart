// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

/// A binding class for the AcceptTermsScreen.
///
/// This class ensures that the AccountAgreementController is created when the
/// AcceptTermsScreen is first loaded.
class AcceptTermsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAgreementController());
  }
}
