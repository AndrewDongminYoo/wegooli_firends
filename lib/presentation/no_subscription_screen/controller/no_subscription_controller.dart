import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/no_subscription_screen/models/no_subscription_model.dart';

/// A controller class for the NoSubscriptionScreen.
///
/// This class manages the state of the NoSubscriptionScreen, including the
/// current noSubscriptionModelObj
class NoSubscriptionController extends GetxController {
  Rx<NoSubscriptionModel> noSubscriptionModelObj = NoSubscriptionModel().obs;
}
