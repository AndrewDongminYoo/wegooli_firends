// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/contact_us_empty_history_controller.dart';

/// A binding class for the ContactUsEmptyHistoryScreen.
///
/// This class ensures that the ContactUsEmptyHistoryController is created when the
/// ContactUsEmptyHistoryScreen is first loaded.
class ContactUsEmptyHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsEmptyHistoryController());
  }
}
