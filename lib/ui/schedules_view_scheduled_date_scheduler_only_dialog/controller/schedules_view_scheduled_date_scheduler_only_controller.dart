// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/models/schedules_view_scheduled_date_scheduler_only_model.dart';

/// A controller class for the SchedulesViewScheduledDateSchedulerOnlyDialog.
///
/// This class manages the state of the SchedulesViewScheduledDateSchedulerOnlyDialog, including the
/// current schedulesViewScheduledDateSchedulerOnlyModelObj
class SchedulesViewScheduledDateSchedulerOnlyController extends GetxController {
  Rx<SchedulesViewScheduledDateSchedulerOnlyModel>
      schedulesViewScheduledDateSchedulerOnlyModelObj =
      SchedulesViewScheduledDateSchedulerOnlyModel().obs;
}
