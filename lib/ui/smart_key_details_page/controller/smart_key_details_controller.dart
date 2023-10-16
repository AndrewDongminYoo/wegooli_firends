// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/smart_key_details_page/models/smart_key_details_model.dart';

/// A controller class for the SmartKeyDetailsPage.
///
/// This class manages the state of the SmartKeyDetailsPage, including the
/// current smartKeyDetailsModelObj
class SmartKeyDetailsController extends GetxController {
  SmartKeyDetailsController(this.smartKeyDetailsModelObj);

  Rx<SmartKeyDetailsModel> smartKeyDetailsModelObj;
}
