// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_one_controller.dart';

/// A binding class for the NoticesOneScreen.
///
/// This class ensures that the NoticesOneController is created when the
/// NoticesOneScreen is first loaded.
class NoticesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticesOneController());
  }
}
