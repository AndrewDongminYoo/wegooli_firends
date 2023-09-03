// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class UserAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountAgreementController());
    Get.lazyPut(() => LicenseController());
    Get.lazyPut(() => PaymentCardController());
    Get.lazyPut(() => UserController());
  }
}
