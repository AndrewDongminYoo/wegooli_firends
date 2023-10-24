// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/notices_no_notice_controller.dart';

class NoticesNoNoticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(NoticesNoNoticeController.new);
  }
}
