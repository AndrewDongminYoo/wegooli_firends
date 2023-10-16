// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/notices_one_screen/models/notices_one_model.dart';

class NoticesOneController extends GetxController {
  Rx<NoticesOneModel> noticesOne = NoticesOneModel().obs;
}
