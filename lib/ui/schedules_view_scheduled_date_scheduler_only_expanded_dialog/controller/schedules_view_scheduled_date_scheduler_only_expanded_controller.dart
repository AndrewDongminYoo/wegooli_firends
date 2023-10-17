// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/models/schedules_view_scheduled_date_scheduler_only_expanded_model.dart';

class SchedulesViewScheduledDateSchedulerOnlyExpandedController
    extends GetxController {
  Rx<SchedulesViewScheduledDateSchedulerOnlyExpandedModel>
      schedulesViewScheduledDateSchedulerOnlyExpanded =
      SchedulesViewScheduledDateSchedulerOnlyExpandedModel().obs;
  DropdownData? choice;

  void onSelected(dynamic value) {
    for (final element in schedulesViewScheduledDateSchedulerOnlyExpanded
        .value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    schedulesViewScheduledDateSchedulerOnlyExpanded.value.choices.refresh();
  }
}
