import '../controller/map_view_cars_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapViewCarsScreen.
///
/// This class ensures that the MapViewCarsController is created when the
/// MapViewCarsScreen is first loaded.
class MapViewCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapViewCarsController());
  }
}
