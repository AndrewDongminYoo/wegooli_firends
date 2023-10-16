// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/smart_key_screen/models/smart_key_model.dart';

/// A controller class for the SmartKeyScreen.
///
/// This class manages the state of the SmartKeyScreen, including the
/// current smartKeyModelObj
class SmartKeyController extends GetxController {
  Rx<SmartKeyModel> smartKeyModelObj = SmartKeyModel().obs;
}
