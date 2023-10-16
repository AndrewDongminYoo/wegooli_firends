// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/unsubscribe_screen/models/unsubscribe_model.dart';

/// A controller class for the UnsubscribeScreen.
///
/// This class manages the state of the UnsubscribeScreen, including the
/// current unsubscribeModelObj
class UnsubscribeController extends GetxController {
  Rx<UnsubscribeModel> unsubscribeModelObj = UnsubscribeModel().obs;
}
