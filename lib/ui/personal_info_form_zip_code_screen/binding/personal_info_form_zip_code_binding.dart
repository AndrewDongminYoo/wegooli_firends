// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/personal_info_form_zip_code_controller.dart';

class PersonalInfoFormZipCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(PersonalInfoFormZipCodeController.new);
  }
}
