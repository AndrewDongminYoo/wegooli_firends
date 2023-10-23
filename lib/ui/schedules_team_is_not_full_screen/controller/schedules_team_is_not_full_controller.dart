// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_team_is_not_full_screen/models/schedules_team_is_not_full_model.dart';

class SchedulesController extends GetxController {
  Rx<SchedulesModel> scheduleModel = SchedulesModel().obs;
}
