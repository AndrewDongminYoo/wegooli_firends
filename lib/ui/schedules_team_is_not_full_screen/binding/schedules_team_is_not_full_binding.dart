// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_not_full_controller.dart';

class SchedulesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SchedulesController.new);
  }
}
