// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/signup_complete_controller.dart';

/// A binding class for the SignupCompleteScreen.
///
/// This class ensures that the SignupCompleteController is created when the
/// SignupCompleteScreen is first loaded.
class SignupCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupCompleteController());
  }
}
