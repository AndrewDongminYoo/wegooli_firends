import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/schedule_confirm_bottomsheet/models/schedule_confirm_model.dart';

/// A controller class for the ScheduleConfirmBottomsheet.
///
/// This class manages the state of the ScheduleConfirmBottomsheet, including the
/// current scheduleConfirmModelObj
class ScheduleConfirmController extends GetxController {
  Rx<ScheduleConfirmModel> scheduleConfirmModelObj = ScheduleConfirmModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element in scheduleConfirmModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    scheduleConfirmModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in scheduleConfirmModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    scheduleConfirmModelObj.value.dropdownItemList1.refresh();
  }
}
