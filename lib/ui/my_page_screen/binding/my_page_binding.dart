// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/my_page_controller.dart';

class MyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyPageController());
  }
}
