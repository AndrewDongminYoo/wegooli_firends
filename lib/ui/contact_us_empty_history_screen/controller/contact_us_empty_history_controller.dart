// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/contact_us_empty_history_screen/models/contact_us_empty_history_model.dart';

class ContactUsEmptyHistoryController extends GetxController {
  Rx<ContactUsEmptyHistoryModel> contactUsEmptyHistory =
      ContactUsEmptyHistoryModel().obs;
}
