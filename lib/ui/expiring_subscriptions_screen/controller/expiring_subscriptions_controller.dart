import '/core/app_export.dart';
import '/ui/expiring_subscriptions_screen/models/expiring_subscriptions_model.dart';

/// A controller class for the ExpiringSubscriptionsScreen.
///
/// This class manages the state of the ExpiringSubscriptionsScreen, including the
/// current expiringSubscriptionsModelObj
class ExpiringSubscriptionsController extends GetxController {
  Rx<ExpiringSubscriptionsModel> expiringSubscriptionsModelObj =
      ExpiringSubscriptionsModel().obs;
}
