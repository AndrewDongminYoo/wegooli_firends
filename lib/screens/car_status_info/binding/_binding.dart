// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the CarStatusInformationScreen.
///
/// This class ensures that the CarStatusInformationController is created when the
/// CarStatusInformationScreen is first loaded.
class CarStatusInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarStatusInformationController());
  }
}
