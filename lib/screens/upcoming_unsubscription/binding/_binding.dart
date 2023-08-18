// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the UpcomingUnsubscriptionViewScreen.
///
/// This class ensures that the UpcomingUnsubscriptionViewController is created when the
/// UpcomingUnsubscriptionViewScreen is first loaded.
class UpcomingUnsubscriptionViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcomingUnsubscriptionViewController());
  }
}
