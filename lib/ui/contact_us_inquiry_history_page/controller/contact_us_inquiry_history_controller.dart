// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/ui/contact_us_inquiry_history_page/models/contact_us_inquiry_history_model.dart';

class ContactUsInquiryHistoryController extends GetxController {
  ContactUsInquiryHistoryController(this.contactUsInquiryHistory);

  Rx<ContactUsInquiryHistoryModel> contactUsInquiryHistory;
}
