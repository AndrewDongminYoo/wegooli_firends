// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/appointment_start_expanded_bottomsheet/models/appointment_start_expanded_model.dart';

class AppointmentStartExpandedController extends GetxController {
  Rx<AppointmentStartExpandedModel> appointmentStartExpanded =
      AppointmentStartExpandedModel().obs;
  DropdownData? choice;

  void onSelected(dynamic value) {
    for (final element in appointmentStartExpanded.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentStartExpanded.value.choices.refresh();
  }
}
