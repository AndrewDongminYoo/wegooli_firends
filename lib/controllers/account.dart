// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class UserAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LicenseController());
    Get.put(PaymentCardController());
    Get.put(UserController());
  }
}
