// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/appointment_end_expanded_bottomsheet/models/appointment_end_expanded_model.dart';

/// A controller class for the AppointmentEndExpandedBottomsheet.
///
/// This class manages the state of the AppointmentEndExpandedBottomsheet, including the
/// current appointmentEndExpandedModelObj
class AppointmentEndExpandedController extends GetxController {
  Rx<AppointmentEndExpandedModel> appointmentEndExpandedModelObj =
      AppointmentEndExpandedModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (final element
        in appointmentEndExpandedModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentEndExpandedModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
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
