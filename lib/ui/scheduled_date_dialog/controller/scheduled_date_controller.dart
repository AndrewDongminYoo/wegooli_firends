// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../models/scheduled_date_model.dart';

class ScheduledDateController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static ScheduledDateController get to =>
      GetIt.I.isRegistered<ScheduledDateController>()
          ? GetIt.I.get<ScheduledDateController>()
          : GetIt.I.registerSingleton(ScheduledDateController());

  final scheduledDate = ScheduledDateModel().obs;
}
