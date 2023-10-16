// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/contact_us_1_1_contact_us_controller.dart';

/// A binding class for the ContactUs11ContactUsScreen.
///
/// This class ensures that the ContactUs11ContactUsController is created when the
/// ContactUs11ContactUsScreen is first loaded.
class ContactUs11ContactUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUs11ContactUsController());
  }
}
