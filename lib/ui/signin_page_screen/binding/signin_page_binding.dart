// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/signin_page_controller.dart';

class SigninPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigninPageController());
  }
}
