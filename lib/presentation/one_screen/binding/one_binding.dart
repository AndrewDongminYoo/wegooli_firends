import '../controller/one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OneScreen.
///
/// This class ensures that the OneController is created when the
/// OneScreen is first loaded.
class OneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OneController());
  }
}
