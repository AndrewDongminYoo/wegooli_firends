// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class TeamCommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ConnectionController.new);
    Get.lazyPut(VehicleController.new);
    Get.lazyPut(ScheduleController.new);
  }
}
