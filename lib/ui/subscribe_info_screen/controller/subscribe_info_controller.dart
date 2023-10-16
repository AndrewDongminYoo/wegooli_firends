// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/subscribe_info_screen/models/subscribe_info_model.dart';

class SubscribeInfoController extends GetxController {
  Rx<SubscribeInfoModel> subscribeInfo = SubscribeInfoModel().obs;
}
