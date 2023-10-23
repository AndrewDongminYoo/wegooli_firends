// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/appointment_all_collapsed_bottomsheet/models/appointment_all_collapsed_model.dart';

class AppointmentAllCollapsedController extends GetxController {
  Rx<AppointmentAllCollapsedModel> appointmentAllCollapsed =
      AppointmentAllCollapsedModel().obs;
  DropdownData? choice;

  void onSelected(dynamic value) {
    for (final element in appointmentAllCollapsed.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentAllCollapsed.value.choices.refresh();
  }
}
