// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/models.dart';

/// A controller class for the TeamScheduleShareScreen.
///
/// This class manages the state of the TeamScheduleShareScreen, including the
/// current teamScheduleShareModelObj
class TeamScheduleController extends GetxController {
  RxList<ScheduleModel> schedules = <ScheduleModel>[].obs;
  RxList<UserDTO> members = <UserDTO>[].obs;
}
