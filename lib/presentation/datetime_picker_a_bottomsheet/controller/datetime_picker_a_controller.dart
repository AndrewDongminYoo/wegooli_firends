import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/datetime_picker_a_bottomsheet/models/datetime_picker_a_model.dart';

/// A controller class for the DatetimePickerABottomsheet.
///
/// This class manages the state of the DatetimePickerABottomsheet, including the
/// current datetimePickerAModelObj
class DatetimePickerAController extends GetxController {
  Rx<DatetimePickerAModel> datetimePickerAModelObj = DatetimePickerAModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in datetimePickerAModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    datetimePickerAModelObj.value.dropdownItemList.refresh();
  }
}
