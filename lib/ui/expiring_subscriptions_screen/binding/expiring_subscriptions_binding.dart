// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/expiring_subscriptions_controller.dart';

class ExpiringSubscriptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ExpiringSubscriptionsController.new);
  }
}
