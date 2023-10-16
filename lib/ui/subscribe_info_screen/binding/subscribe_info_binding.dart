// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/subscribe_info_controller.dart';

/// A binding class for the SubscribeInfoScreen.
///
/// This class ensures that the SubscribeInfoController is created when the
/// SubscribeInfoScreen is first loaded.
class SubscribeInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscribeInfoController());
  }
}
