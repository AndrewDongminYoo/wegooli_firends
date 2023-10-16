// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/smart_key_another_is_currently_using_screen/models/smart_key_another_is_currently_using_model.dart';

class SmartKeyAnotherIsCurrentlyUsingController extends GetxController {
  Rx<SmartKeyAnotherIsCurrentlyUsingModel> smartKeyAnotherIsCurrentlyUsing =
      SmartKeyAnotherIsCurrentlyUsingModel().obs;
}
