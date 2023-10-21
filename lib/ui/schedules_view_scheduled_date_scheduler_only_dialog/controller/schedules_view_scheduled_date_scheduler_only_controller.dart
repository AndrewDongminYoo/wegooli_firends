// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/models/schedules_view_scheduled_date_scheduler_only_model.dart';

class SchedulesViewScheduledDateController extends GetxController {
  Rx<SchedulesViewScheduledDateModel> schedulesViewScheduledDate =
      SchedulesViewScheduledDateModel().obs;
}
