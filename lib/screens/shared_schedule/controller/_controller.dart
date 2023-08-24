// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../shared_schedule.dart';
import '/data/models/models.dart';

/// A controller class for the TeamScheduleShareScreen.
///
/// This class manages the state of the TeamScheduleShareScreen, including the
/// current teamScheduleShareModelObj
class TeamScheduleController extends GetxController {
  RxList<Schedule> schedules = <Schedule>[].obs;
  RxList<TeamAccountModel> members = <TeamAccountModel>[].obs;
}
