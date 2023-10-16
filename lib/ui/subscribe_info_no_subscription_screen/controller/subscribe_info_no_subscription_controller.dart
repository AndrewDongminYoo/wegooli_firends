// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/subscribe_info_no_subscription_screen/models/subscribe_info_no_subscription_model.dart';

class SubscribeInfoNoSubscriptionController extends GetxController {
  Rx<SubscribeInfoNoSubscriptionModel> subscribeInfoNoSubscription =
      SubscribeInfoNoSubscriptionModel().obs;
}
