import '../controller/no_subscription_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoSubscriptionScreen.
///
/// This class ensures that the NoSubscriptionController is created when the
/// NoSubscriptionScreen is first loaded.
class NoSubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoSubscriptionController());
  }
}
