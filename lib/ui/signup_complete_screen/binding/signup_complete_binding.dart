// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/signup_complete_controller.dart';

class SignupCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupCompleteController());
  }
}
