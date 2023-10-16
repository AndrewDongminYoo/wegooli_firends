// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_page/models/schedules_model.dart';

class SchedulesController extends GetxController {
  SchedulesController(this.schedules);

  Rx<SchedulesModel> schedules;
}
