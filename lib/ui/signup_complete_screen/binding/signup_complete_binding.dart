// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/signup_complete_controller.dart';

class SignupCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SignupCompleteController.new);
  }
}
