// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/my_page_controller.dart';

/// A binding class for the MyPageScreen.
///
/// This class ensures that the MyPageController is created when the
/// MyPageScreen is first loaded.
class MyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyPageController());
  }
}
