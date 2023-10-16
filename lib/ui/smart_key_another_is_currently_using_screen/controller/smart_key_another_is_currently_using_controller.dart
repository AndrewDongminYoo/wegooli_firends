// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/smart_key_another_is_currently_using_screen/models/smart_key_another_is_currently_using_model.dart';

/// A controller class for the SmartKeyAnotherIsCurrentlyUsingScreen.
///
/// This class manages the state of the SmartKeyAnotherIsCurrentlyUsingScreen, including the
/// current smartKeyAnotherIsCurrentlyUsingModelObj
class SmartKeyAnotherIsCurrentlyUsingController extends GetxController {
  Rx<SmartKeyAnotherIsCurrentlyUsingModel>
      smartKeyAnotherIsCurrentlyUsingModelObj =
      SmartKeyAnotherIsCurrentlyUsingModel().obs;
}
