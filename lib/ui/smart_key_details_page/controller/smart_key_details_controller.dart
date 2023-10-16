// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/smart_key_details_page/models/smart_key_details_model.dart';

class SmartKeyDetailsController extends GetxController {
  SmartKeyDetailsController(this.smartKeyDetails);

  Rx<SmartKeyDetailsModel> smartKeyDetails;
}
