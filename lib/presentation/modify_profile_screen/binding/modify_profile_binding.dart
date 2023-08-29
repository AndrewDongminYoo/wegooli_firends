import '../controller/modify_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ModifyProfileScreen.
///
/// This class ensures that the ModifyProfileController is created when the
/// ModifyProfileScreen is first loaded.
class ModifyProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModifyProfileController());
  }
}
