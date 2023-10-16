// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_one_controller.dart';

class NoticesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticesOneController());
  }
}
