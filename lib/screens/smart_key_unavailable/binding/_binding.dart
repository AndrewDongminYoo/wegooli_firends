// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the SmartKeyNotAvailableScreen.
///
/// This class ensures that the SmartKeyNotAvailableController is created when the
/// SmartKeyNotAvailableScreen is first loaded.
class SmartKeyAvailableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmartKeyAvailabilityController());
  }
}
