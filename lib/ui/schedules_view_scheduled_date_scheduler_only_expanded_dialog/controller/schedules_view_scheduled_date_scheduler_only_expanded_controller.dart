// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/models/schedules_view_scheduled_date_scheduler_only_expanded_model.dart';

/// A controller class for the SchedulesViewScheduledDateSchedulerOnlyExpandedDialog.
///
/// This class manages the state of the SchedulesViewScheduledDateSchedulerOnlyExpandedDialog, including the
/// current schedulesViewScheduledDateSchedulerOnlyExpandedModelObj
class SchedulesViewScheduledDateSchedulerOnlyExpandedController
    extends GetxController {
  Rx<SchedulesViewScheduledDateSchedulerOnlyExpandedModel>
      schedulesViewScheduledDateSchedulerOnlyExpandedModelObj =
      SchedulesViewScheduledDateSchedulerOnlyExpandedModel().obs;

  DropdownData? selectedDropDownValue;

  void onSelected(dynamic value) {
    for (final element
        in schedulesViewScheduledDateSchedulerOnlyExpandedModelObj
            .value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    schedulesViewScheduledDateSchedulerOnlyExpandedModelObj
        .value.dropdownItemList
        .refresh();
  }
}
