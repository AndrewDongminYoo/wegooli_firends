// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/contact_us_inquiry_history_expanded_tab_container_controller.dart';

class ContactUsInquiryHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ContactUsInquiryHistoryController.new);
  }
}
