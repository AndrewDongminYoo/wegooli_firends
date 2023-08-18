// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the CarStateInformationScreen.
///
/// This class ensures that the CarStateInformationController is created when the
/// CarStateInformationScreen is first loaded.
class CarStateInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarStateInformationController());
  }
}
