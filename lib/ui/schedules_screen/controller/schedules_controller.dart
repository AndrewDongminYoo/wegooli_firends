// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/ui/schedules_screen/models/schedules_model.dart';

class SchedulesController extends GetxController {
  Rx<SchedulesModel> scheduleModel = SchedulesModel().obs;
}
