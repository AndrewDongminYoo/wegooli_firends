// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/profile_page/models/profile_model.dart';

class ProfileController extends GetxController {
  ProfileController(this.profile);

  Rx<ProfileModel> profile;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;
}
