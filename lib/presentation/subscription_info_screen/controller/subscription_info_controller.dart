import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/subscription_info_screen/models/subscription_info_model.dart';

/// A controller class for the SubscriptionInfoScreen.
///
/// This class manages the state of the SubscriptionInfoScreen, including the
/// current subscriptionInfoModelObj
class SubscriptionInfoController extends GetxController {
  Rx<SubscriptionInfoModel> subscriptionInfoModelObj =
      SubscriptionInfoModel().obs;
}
