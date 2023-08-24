// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/selection_popup.dart';
import '/screens/book_datetime_picker/models/_model.dart';

/// A controller class for the ReservationDatetimePickerBottomsheet.
///
/// This class manages the state of the ReservationDatetimePickerBottomsheet, including the
/// current reservationDatetimePickerModelObj
class ReservationDatetimePickerController extends GetxController {
  Rx<ReservationDatetimePickerModel> reservationDatetimePickerModelObj =
      ReservationDatetimePickerModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in reservationDatetimePickerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    reservationDatetimePickerModelObj.value.dropdownItemList.refresh();
  }
}
