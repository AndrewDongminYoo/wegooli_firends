// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/schedules_team_is_not_full_controller.dart';

/// A binding class for the SchedulesTeamIsNotFullScreen.
///
/// This class ensures that the SchedulesTeamIsNotFullController is created when the
/// SchedulesTeamIsNotFullScreen is first loaded.
class SchedulesTeamIsNotFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchedulesTeamIsNotFullController());
  }
}
