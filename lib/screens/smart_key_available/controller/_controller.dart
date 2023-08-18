// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the SmartKeyAvailablePage.
///
/// This class manages the state of the SmartKeyAvailablePage, including the
/// current smartKeyAvailableModelObj
class SmartKeyAvailableController extends GetxController {
  SmartKeyAvailableController(this.smartKeyAvailableModelObj);

  Rx<SmartKeyAvailableModel> smartKeyAvailableModelObj;
}
