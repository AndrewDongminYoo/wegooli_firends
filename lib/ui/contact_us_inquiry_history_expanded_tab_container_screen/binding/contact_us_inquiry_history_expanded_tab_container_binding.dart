// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/contact_us_inquiry_history_expanded_tab_container_controller.dart';

class ContactUsInquiryHistoryExpandedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsInquiryHistoryExpandedTabContainerController());
  }
}
