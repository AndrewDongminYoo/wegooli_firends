// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_team_is_full_screen/models/schedules_team_is_full_model.dart';

class SchedulesTeamIsFullController extends GetxController {
  Rx<SchedulesTeamIsFullModel> schedulesTeamIsFull =
      SchedulesTeamIsFullModel().obs;
}
