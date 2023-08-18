// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the TeamScheduleShareScreen.
///
/// This class manages the state of the TeamScheduleShareScreen, including the
/// current teamScheduleShareModelObj
class TeamScheduleController extends GetxController {
  Rx<TeamScheduleModel> scheduleModelObj =
      TeamScheduleModel().obs;
}
