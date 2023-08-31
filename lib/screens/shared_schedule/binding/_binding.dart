// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the TeamScheduleShareScreen.
///
/// This class ensures that the TeamScheduleShareController is created when the
/// TeamScheduleShareScreen is first loaded.
class TeamScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleController());
  }
}
