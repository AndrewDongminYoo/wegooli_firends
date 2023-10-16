// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/appointment_end_expanded_bottomsheet/models/appointment_end_expanded_model.dart';

/// A controller class for the AppointmentEndExpandedBottomsheet.
///
/// This class manages the state of the AppointmentEndExpandedBottomsheet, including the
/// current appointmentEndExpandedModelObj
class AppointmentEndExpandedController extends GetxController {
  Rx<AppointmentEndExpandedModel> appointmentEndExpandedModelObj =
      AppointmentEndExpandedModel().obs;

  DropdownData? selectedDropDownValue;

  DropdownData? selectedDropDownValue1;

  void onSelected(dynamic value) {
    for (final element
        in appointmentEndExpandedModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentEndExpandedModelObj.value.dropdownItemList.refresh();
  }

  void onSelected1(dynamic value) {
    for (final element
        in appointmentEndExpandedModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentEndExpandedModelObj.value.dropdownItemList1.refresh();
  }
}
