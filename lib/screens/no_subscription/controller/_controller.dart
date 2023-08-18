// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the SubscriptionInfoNoServiceScreen.
///
/// This class manages the state of the SubscriptionInfoNoServiceScreen, including the
/// current subscriptionInfoNoServiceModelObj
class SubscriptionInfoNoServiceController extends GetxController {
  Rx<SubscriptionInfoNoServiceModel> subscriptionInfoNoServiceModelObj =
      SubscriptionInfoNoServiceModel().obs;
}
