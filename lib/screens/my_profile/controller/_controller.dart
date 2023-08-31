// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:

/// A controller class for the MyProfilePage.
///
/// This class manages the state of the MyProfilePage, including the
/// current myProfileModelObj
class TeamAccountConnectionController extends GetxController {
  static TeamAccountConnectionController get to => Get.isRegistered<TeamAccountConnectionController>()
      ? Get.find<TeamAccountConnectionController>()
      : Get.put(TeamAccountConnectionController());

}
