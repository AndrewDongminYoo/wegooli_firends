// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/models/schedules_view_scheduled_date_scheduler_only_expanded_model.dart';

class SchedulesViewScheduledDateExpandedController extends GetxController {
  Rx<SchedulesViewScheduledDateExpandedModel>
      schedulesViewScheduledDateExpanded =
      SchedulesViewScheduledDateExpandedModel().obs;
  DropdownData? choice;

  void onSelected(dynamic value) {
    for (final element
        in schedulesViewScheduledDateExpanded.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    schedulesViewScheduledDateExpanded.value.choices.refresh();
  }
}
