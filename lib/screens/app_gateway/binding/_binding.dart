// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the AppGatewayScreen.
///
/// This class ensures that the AppGatewayController is created when the
/// AppGatewayScreen is first loaded.
class AppGatewayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppGatewayController());
  }
}
