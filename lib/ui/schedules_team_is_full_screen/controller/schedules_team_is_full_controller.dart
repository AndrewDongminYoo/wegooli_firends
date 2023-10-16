// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_team_is_full_screen/models/schedules_team_is_full_model.dart';

/// A controller class for the SchedulesTeamIsFullScreen.
///
/// This class manages the state of the SchedulesTeamIsFullScreen, including the
/// current schedulesTeamIsFullModelObj
class SchedulesTeamIsFullController extends GetxController {
  Rx<SchedulesTeamIsFullModel> schedulesTeamIsFullModelObj =
      SchedulesTeamIsFullModel().obs;
}
