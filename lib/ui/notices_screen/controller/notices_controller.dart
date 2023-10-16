// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/notices_screen/models/notices_model.dart';

class NoticesController extends GetxController {
  Rx<NoticesModel> notices = NoticesModel().obs;
}
