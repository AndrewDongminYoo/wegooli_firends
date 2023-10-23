// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/signin_page_controller.dart';

class SigninPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SigninPageController.new);
  }
}
