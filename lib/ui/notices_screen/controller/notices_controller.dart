// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/ui/notices_screen/models/notices_model.dart';

class NoticesController extends GetxController {
  Rx<NoticesModel> notices = NoticesModel().obs;
}
