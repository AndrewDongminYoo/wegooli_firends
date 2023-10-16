// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/smart_key_screen/models/smart_key_model.dart';

class SmartKeyController extends GetxController {
  Rx<SmartKeyModel> smartKey = SmartKeyModel().obs;
}
