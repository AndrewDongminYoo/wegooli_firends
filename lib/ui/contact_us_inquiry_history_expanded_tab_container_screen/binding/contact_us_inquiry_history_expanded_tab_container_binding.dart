// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/contact_us_inquiry_history_expanded_tab_container_controller.dart';

/// A binding class for the ContactUsInquiryHistoryExpandedTabContainerScreen.
///
/// This class ensures that the ContactUsInquiryHistoryExpandedTabContainerController is created when the
/// ContactUsInquiryHistoryExpandedTabContainerScreen is first loaded.
class ContactUsInquiryHistoryExpandedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsInquiryHistoryExpandedTabContainerController());
  }
}
