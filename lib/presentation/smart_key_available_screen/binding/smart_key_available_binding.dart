import '../controller/smart_key_available_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SmartKeyAvailableScreen.
///
/// This class ensures that the SmartKeyAvailableController is created when the
/// SmartKeyAvailableScreen is first loaded.
class SmartKeyAvailableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmartKeyAvailableController());
  }
}
