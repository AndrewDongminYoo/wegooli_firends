// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_container_controller.dart';

class SchedulesContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchedulesContainerController());
  }
}
