// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class TeamCommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ConnectionController());
    Get.put(VehicleController());
    Get.put(ScheduleController());
  }
}
