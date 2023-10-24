// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '../models/scheduled_date_model.dart';

class ScheduledDateController extends GetxController {
  Rx<ScheduledDateModel> scheduledDate = ScheduledDateModel().obs;
}
