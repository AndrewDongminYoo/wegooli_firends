// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ConnectionController extends GetxController {
  static ConnectionController get to =>
      Get.isRegistered<ConnectionController>()
          ? Get.find<ConnectionController>()
          : Get.put(ConnectionController());

  RxString phoneNumber = ''.obs;
  Rx<Account> account = Account().obs;
  Rx<UserDetailsDTO> userDetailInfo = UserDetailsDTO().obs;
}
