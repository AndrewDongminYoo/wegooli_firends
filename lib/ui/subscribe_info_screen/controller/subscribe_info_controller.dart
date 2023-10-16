// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/subscribe_info_screen/models/subscribe_info_model.dart';

/// A controller class for the SubscribeInfoScreen.
///
/// This class manages the state of the SubscribeInfoScreen, including the
/// current subscribeInfoModelObj
class SubscribeInfoController extends GetxController {
  Rx<SubscribeInfoModel> subscribeInfoModelObj = SubscribeInfoModel().obs;
}
