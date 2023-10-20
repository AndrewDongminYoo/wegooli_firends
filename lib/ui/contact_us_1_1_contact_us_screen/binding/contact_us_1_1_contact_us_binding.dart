// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/contact_us_1_1_contact_us_controller.dart';

class OneOnOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(OneOnOneController.new);
  }
}
