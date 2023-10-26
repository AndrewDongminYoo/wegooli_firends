// 📦 Package imports:
import 'package:get/state_manager.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import '../models/notices_model.dart';

class NoticesController extends GetxController {
  // ignore: prefer_constructors_over_static_methods
  static NoticesController get to => GetIt.I.isRegistered<NoticesController>()
      ? GetIt.I.get<NoticesController>()
      : GetIt.I.registerSingleton(NoticesController());

  Rx<NoticesModel> notices = NoticesModel().obs;
}
