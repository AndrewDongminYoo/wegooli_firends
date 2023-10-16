// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
