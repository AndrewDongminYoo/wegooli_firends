// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/contact_us_empty_history_screen/models/contact_us_empty_history_model.dart';

/// A controller class for the ContactUsEmptyHistoryScreen.
///
/// This class manages the state of the ContactUsEmptyHistoryScreen, including the
/// current contactUsEmptyHistoryModelObj
class ContactUsEmptyHistoryController extends GetxController {
  Rx<ContactUsEmptyHistoryModel> contactUsEmptyHistoryModelObj =
      ContactUsEmptyHistoryModel().obs;
}
