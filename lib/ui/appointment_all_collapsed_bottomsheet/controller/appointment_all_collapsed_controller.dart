// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/appointment_all_collapsed_bottomsheet/models/appointment_all_collapsed_model.dart';

/// A controller class for the AppointmentAllCollapsedBottomsheet.
///
/// This class manages the state of the AppointmentAllCollapsedBottomsheet, including the
/// current appointmentAllCollapsedModelObj
class AppointmentAllCollapsedController extends GetxController {
  Rx<AppointmentAllCollapsedModel> appointmentAllCollapsedModelObj =
      AppointmentAllCollapsedModel().obs;

  DropdownData? selectedDropDownValue;

  void onSelected(dynamic value) {
    for (final element
        in appointmentAllCollapsedModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    appointmentAllCollapsedModelObj.value.dropdownItemList.refresh();
  }
}
