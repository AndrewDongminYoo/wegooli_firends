// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the SubscriptionInfoNoServiceScreen.
///
/// This class ensures that the SubscriptionInfoNoServiceController is created when the
/// SubscriptionInfoNoServiceScreen is first loaded.
class SubscriptionInfoNoServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionInfoNoServiceController());
  }
}
