// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the SignupAcceptTermsScreen.
///
/// This class ensures that the SignupAcceptTermsController is created when the
/// SignupAcceptTermsScreen is first loaded.
class SignupAcceptTermsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AcceptTermsController());
  }
}
