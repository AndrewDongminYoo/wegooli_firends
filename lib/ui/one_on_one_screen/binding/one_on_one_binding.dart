// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/one_on_one_controller.dart';

class OneOnOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(OneOnOneController.new);
  }
}
