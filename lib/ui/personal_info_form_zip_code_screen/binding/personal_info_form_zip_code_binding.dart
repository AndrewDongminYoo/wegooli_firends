// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/personal_info_form_zip_code_controller.dart';

class PersonalInfoFormZipCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalInfoFormZipCodeController());
  }
}
