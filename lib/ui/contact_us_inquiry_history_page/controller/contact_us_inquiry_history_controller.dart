// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/contact_us_inquiry_history_page/models/contact_us_inquiry_history_model.dart';

/// A controller class for the ContactUsInquiryHistoryPage.
///
/// This class manages the state of the ContactUsInquiryHistoryPage, including the
/// current contactUsInquiryHistoryModelObj
class ContactUsInquiryHistoryController extends GetxController {
  ContactUsInquiryHistoryController(this.contactUsInquiryHistoryModelObj);

  Rx<ContactUsInquiryHistoryModel> contactUsInquiryHistoryModelObj;
}
