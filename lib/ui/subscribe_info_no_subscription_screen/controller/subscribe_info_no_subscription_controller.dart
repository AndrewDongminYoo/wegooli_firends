import '/core/app_export.dart';
import '/ui/subscribe_info_no_subscription_screen/models/subscribe_info_no_subscription_model.dart';

/// A controller class for the SubscribeInfoNoSubscriptionScreen.
///
/// This class manages the state of the SubscribeInfoNoSubscriptionScreen, including the
/// current subscribeInfoNoSubscriptionModelObj
class SubscribeInfoNoSubscriptionController extends GetxController {
  Rx<SubscribeInfoNoSubscriptionModel> subscribeInfoNoSubscriptionModelObj =
      SubscribeInfoNoSubscriptionModel().obs;
}
