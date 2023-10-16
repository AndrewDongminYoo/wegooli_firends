// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/smart_key_controller.dart';

/// A binding class for the SmartKeyScreen.
///
/// This class ensures that the SmartKeyController is created when the
/// SmartKeyScreen is first loaded.
class SmartKeyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmartKeyController());
  }
}
