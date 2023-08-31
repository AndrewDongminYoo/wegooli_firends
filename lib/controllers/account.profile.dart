// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:

class TeamAccountConnectionController extends GetxController {
  static TeamAccountConnectionController get to => Get.isRegistered<TeamAccountConnectionController>()
      ? Get.find<TeamAccountConnectionController>()
      : Get.put(TeamAccountConnectionController());
}
