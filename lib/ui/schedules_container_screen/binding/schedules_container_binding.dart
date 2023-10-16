// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_container_controller.dart';

/// A binding class for the SchedulesContainerScreen.
///
/// This class ensures that the SchedulesContainerController is created when the
/// SchedulesContainerScreen is first loaded.
class SchedulesContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchedulesContainerController());
  }
}
