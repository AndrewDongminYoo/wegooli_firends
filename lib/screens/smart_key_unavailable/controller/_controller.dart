// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the SmartKeyNotAvailableScreen.
///
/// This class manages the state of the SmartKeyNotAvailableScreen, including the
/// current smartKeyNotAvailableModelObj
class SmartKeyNotAvailableController extends GetxController {
  Rx<SmartKeyNotAvailableModel> smartKeyNotAvailableModelObj =
      SmartKeyNotAvailableModel().obs;
}
