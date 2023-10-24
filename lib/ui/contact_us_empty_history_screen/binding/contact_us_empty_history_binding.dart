// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/contact_us_empty_history_controller.dart';

class ContactUsEmptyHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ContactUsEmptyHistoryController.new);
  }
}
