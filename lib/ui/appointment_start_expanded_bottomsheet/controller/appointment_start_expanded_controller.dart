// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/appointment_start_expanded_bottomsheet/models/appointment_start_expanded_model.dart';

/// A controller class for the AppointmentStartExpandedBottomsheet.
///
/// This class manages the state of the AppointmentStartExpandedBottomsheet, including the
/// current appointmentStartExpandedModelObj
class AppointmentStartExpandedController extends GetxController {
  Rx<AppointmentStartExpandedModel> appointmentStartExpandedModelObj =
      AppointmentStartExpandedModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (final element
        in appointmentStartExpandedModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentStartExpandedModelObj.value.dropdownItemList.refresh();
  }
}
