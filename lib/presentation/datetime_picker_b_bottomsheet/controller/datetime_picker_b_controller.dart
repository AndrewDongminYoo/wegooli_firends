import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/datetime_picker_b_bottomsheet/models/datetime_picker_b_model.dart';

/// A controller class for the DatetimePickerBBottomsheet.
///
/// This class manages the state of the DatetimePickerBBottomsheet, including the
/// current datetimePickerBModelObj
class DatetimePickerBController extends GetxController {
  Rx<DatetimePickerBModel> datetimePickerBModelObj = DatetimePickerBModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in datetimePickerBModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    datetimePickerBModelObj.value.dropdownItemList.refresh();
  }
}
