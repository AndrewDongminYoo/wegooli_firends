// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/personal_info_form_zip_code_controller.dart';

/// A binding class for the PersonalInfoFormZipCodeScreen.
///
/// This class ensures that the PersonalInfoFormZipCodeController is created when the
/// PersonalInfoFormZipCodeScreen is first loaded.
class PersonalInfoFormZipCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalInfoFormZipCodeController());
  }
}
