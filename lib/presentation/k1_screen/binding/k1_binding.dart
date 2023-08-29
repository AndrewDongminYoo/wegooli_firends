import '../controller/k1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K1Screen.
///
/// This class ensures that the K1Controller is created when the
/// K1Screen is first loaded.
class K1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K1Controller());
  }
}
