// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/expiring_subscriptions_screen/models/expiring_subscriptions_model.dart';

class ExpiringSubscriptionsController extends GetxController {
  Rx<ExpiringSubscriptionsModel> expiringSubscriptions =
      ExpiringSubscriptionsModel().obs;
}
