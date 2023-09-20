// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class UserAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(LicenseController.new);
    Get.lazyPut(PaymentCardController.new);
    Get.put(UserController.new);
  }
}
