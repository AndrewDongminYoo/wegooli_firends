// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../models/schedules_model.dart';

class SchedulesController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static SchedulesController get to =>
      GetIt.I.isRegistered<SchedulesController>()
          ? GetIt.I.get<SchedulesController>()
          : GetIt.I.registerSingleton(SchedulesController());

  final scheduleModel = SchedulesModel().obs;
}
