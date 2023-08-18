// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the SmartKeyNotAvailableScreen.
///
/// This class manages the state of the SmartKeyNotAvailableScreen, including the
/// current smartKeyNotAvailableModelObj
class SmartKeyNotAvailableController extends GetxController {
  Rx<SmartKeyNotAvailableModel> smartKeyNotAvailableModelObj =
      SmartKeyNotAvailableModel().obs;
}
