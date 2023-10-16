// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_full_controller.dart';

/// A binding class for the SchedulesTeamIsFullScreen.
///
/// This class ensures that the SchedulesTeamIsFullController is created when the
/// SchedulesTeamIsFullScreen is first loaded.
class SchedulesTeamIsFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchedulesTeamIsFullController());
  }
}
