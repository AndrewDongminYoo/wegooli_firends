// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/subscribe_info_no_subscription_controller.dart';

/// A binding class for the SubscribeInfoNoSubscriptionScreen.
///
/// This class ensures that the SubscribeInfoNoSubscriptionController is created when the
/// SubscribeInfoNoSubscriptionScreen is first loaded.
class SubscribeInfoNoSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscribeInfoNoSubscriptionController());
  }
}
