// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/appointment_end_expanded_bottomsheet/models/appointment_end_expanded_model.dart';

class AppointmentEndExpandedController extends GetxController {
  Rx<AppointmentEndExpandedModel> appointmentEndExpanded =
      AppointmentEndExpandedModel().obs;
  DropdownData? choice;
  DropdownData? choice1;

  void onSelected(dynamic value) {
    for (final element in appointmentEndExpanded.value.choices.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentEndExpanded.value.choices.refresh();
  }

  void onSelected1(dynamic value) {
    for (final element in appointmentEndExpanded.value.choices1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentEndExpanded.value.choices1.refresh();
  }
}
