// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/schedules_container_screen/models/schedules_container_model.dart';

class SchedulesContainerController extends GetxController {
  Rx<SchedulesContainerModel> schedulesContainer =
      SchedulesContainerModel().obs;
}
