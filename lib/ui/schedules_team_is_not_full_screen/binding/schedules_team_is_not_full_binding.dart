// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_not_full_controller.dart';

class SchedulesTeamIsNotFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchedulesTeamIsNotFullController());
  }
}
