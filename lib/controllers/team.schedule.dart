// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ScheduleController extends GetxController {
  static ScheduleController get to => Get.isRegistered<ScheduleController>()
      ? Get.find<ScheduleController>()
      : Get.put(ScheduleController());

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "Item One"),
    SelectionPopupModel(id: 2, title: "Item Two"),
    SelectionPopupModel(id: 3, title: "Item Three")
  ]);

  RxList<Schedule> schedules = <Schedule>[].obs;
  RxList<TeamAccountModel> members = <TeamAccountModel>[].obs;
}
