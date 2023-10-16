// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/unsubscribe_screen/models/unsubscribe_model.dart';

class UnsubscribeController extends GetxController {
  Rx<UnsubscribeModel> unsubscribe = UnsubscribeModel().obs;
}
