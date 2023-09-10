// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UserAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(LicenseController.new);
    Get.lazyPut(PaymentCardController.new);
    Get.lazyPut(UserController.new);
  }
}
