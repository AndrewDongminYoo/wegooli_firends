// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/contact_us_inquiry_history_expanded_page/models/contact_us_inquiry_history_expanded_model.dart';

/// A controller class for the ContactUsInquiryHistoryExpandedPage.
///
/// This class manages the state of the ContactUsInquiryHistoryExpandedPage, including the
/// current contactUsInquiryHistoryExpandedModelObj
class ContactUsInquiryHistoryExpandedController extends GetxController {
  ContactUsInquiryHistoryExpandedController(
      this.contactUsInquiryHistoryExpandedModelObj);

  Rx<ContactUsInquiryHistoryExpandedModel>
      contactUsInquiryHistoryExpandedModelObj;
}
