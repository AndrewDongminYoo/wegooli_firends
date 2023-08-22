// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the SmartKeyAvailablePage.
///
/// This class manages the state of the SmartKeyAvailablePage, including the
/// current smartKeyAvailableModelObj
class SmartKeyAvailableController extends GetxController {
  SmartKeyAvailableController(this.smartKeyAvailableModelObj);

  Rx<SmartKeyAvailableModel> smartKeyAvailableModelObj;
}
