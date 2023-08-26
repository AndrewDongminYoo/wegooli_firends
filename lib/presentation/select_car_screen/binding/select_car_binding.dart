import '../controller/select_car_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectCarScreen.
///
/// This class ensures that the SelectCarController is created when the
/// SelectCarScreen is first loaded.
class SelectCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectCarController());
  }
}
