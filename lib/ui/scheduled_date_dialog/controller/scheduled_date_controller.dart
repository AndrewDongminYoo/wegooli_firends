// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/scheduled_date_model.dart';
import '/data/models/dropdown_data.dart';

class ScheduledDateController extends GetxController {
  Rx<ScheduledDateModel> scheduledDate = ScheduledDateModel().obs;
  DropdownData? choice;

  void onSelected(dynamic value) {
    for (final element in scheduledDate.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    scheduledDate.value.choices.refresh();
  }
}
