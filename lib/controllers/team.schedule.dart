// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ScheduleController extends GetxController {
  static ScheduleController get to =>
      Get.isRegistered<ScheduleController>()
          ? Get.find<ScheduleController>()
          : Get.put(ScheduleController());

  SelectionPopupModel? selectedDropDownValue;
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
    SelectionPopupModel(id: 2, title: "Item Two"),
    SelectionPopupModel(id: 3, title: "Item Three")
  ]);

  RxList<Schedule> schedules = <Schedule>[].obs;
  RxList<TeamAccountModel> members = <TeamAccountModel>[].obs;
  onSelected(dynamic value) {
    for (var element
        in dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    dropdownItemList.refresh();
  }
}
