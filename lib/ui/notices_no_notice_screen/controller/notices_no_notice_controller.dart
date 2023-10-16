// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/notices_no_notice_screen/models/notices_no_notice_model.dart';

class NoticesNoNoticeController extends GetxController {
  Rx<NoticesNoNoticeModel> noticesNoNotice = NoticesNoNoticeModel().obs;
}
