// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_team_is_not_full_screen/models/schedules_team_is_not_full_model.dart';

/// A controller class for the SchedulesTeamIsNotFullScreen.
///
/// This class manages the state of the SchedulesTeamIsNotFullScreen, including the
/// current schedulesTeamIsNotFullModelObj
class SchedulesTeamIsNotFullController extends GetxController {
  Rx<SchedulesTeamIsNotFullModel> schedulesTeamIsNotFullModelObj =
      SchedulesTeamIsNotFullModel().obs;
}
