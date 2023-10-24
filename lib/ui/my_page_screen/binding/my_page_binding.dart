// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/my_page_controller.dart';

class MyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(MyPageController.new);
  }
}
