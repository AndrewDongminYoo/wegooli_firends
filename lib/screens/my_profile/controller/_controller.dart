// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/data.dart';

/// A controller class for the MyProfilePage.
///
/// This class manages the state of the MyProfilePage, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {
  static MyProfileController get to => Get.isRegistered<MyProfileController>()
      ? Get.find<MyProfileController>()
      : Get.put(MyProfileController());
  RxString phoneNumber = ''.obs;
  var account = Account().obs;
  var userDetailInfo = UserDetailsDTO().obs;
}
