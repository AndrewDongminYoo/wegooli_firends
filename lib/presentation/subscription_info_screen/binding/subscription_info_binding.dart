import '../controller/subscription_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubscriptionInfoScreen.
///
/// This class ensures that the SubscriptionInfoController is created when the
/// SubscriptionInfoScreen is first loaded.
class SubscriptionInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionInfoController());
  }
}
