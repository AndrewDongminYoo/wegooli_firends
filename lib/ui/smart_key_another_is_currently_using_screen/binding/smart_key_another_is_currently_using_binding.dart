// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/smart_key_another_is_currently_using_controller.dart';

/// A binding class for the SmartKeyAnotherIsCurrentlyUsingScreen.
///
/// This class ensures that the SmartKeyAnotherIsCurrentlyUsingController is created when the
/// SmartKeyAnotherIsCurrentlyUsingScreen is first loaded.
class SmartKeyAnotherIsCurrentlyUsingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmartKeyAnotherIsCurrentlyUsingController());
  }
}
