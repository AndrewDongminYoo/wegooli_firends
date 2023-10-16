// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/expiring_subscriptions_controller.dart';

/// A binding class for the ExpiringSubscriptionsScreen.
///
/// This class ensures that the ExpiringSubscriptionsController is created when the
/// ExpiringSubscriptionsScreen is first loaded.
class ExpiringSubscriptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExpiringSubscriptionsController());
  }
}
