// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/home_page_controller.dart';

/// A binding class for the HomePageScreen.
///
/// This class ensures that the HomePageController is created when the
/// HomePageScreen is first loaded.
class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
