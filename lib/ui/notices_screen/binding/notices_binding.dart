// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/notices_controller.dart';

/// A binding class for the NoticesScreen.
///
/// This class ensures that the NoticesController is created when the
/// NoticesScreen is first loaded.
class NoticesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticesController());
  }
}
