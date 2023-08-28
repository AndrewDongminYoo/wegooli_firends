// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the UpcomingUnsubscriptionScreen.
///
/// This class ensures that the UpcomingUnsubscriptionController is created when the
/// UpcomingUnsubscriptionScreen is first loaded.
class UpcomingUnsubscriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingUnsubscriptionController());
  }
}
