import '../controller/car_status_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CarStatusInfoScreen.
///
/// This class ensures that the CarStatusInfoController is created when the
/// CarStatusInfoScreen is first loaded.
class CarStatusInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarStatusInfoController());
  }
}
