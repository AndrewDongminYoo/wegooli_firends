// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_no_notice_controller.dart';

/// A binding class for the NoticesNoNoticeScreen.
///
/// This class ensures that the NoticesNoNoticeController is created when the
/// NoticesNoNoticeScreen is first loaded.
class NoticesNoNoticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticesNoNoticeController());
  }
}
