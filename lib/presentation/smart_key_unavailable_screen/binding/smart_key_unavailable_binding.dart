import '../controller/smart_key_unavailable_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SmartKeyUnavailableScreen.
///
/// This class ensures that the SmartKeyUnavailableController is created when the
/// SmartKeyUnavailableScreen is first loaded.
class SmartKeyUnavailableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SmartKeyUnavailableController());
  }
}
