// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_full_controller.dart';

class SchedulesTeamIsFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(SchedulesTeamIsFullController.new);
  }
}
