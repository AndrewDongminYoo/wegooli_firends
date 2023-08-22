// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the RegisterSuccessPageScreen.
///
/// This class manages the state of the RegisterSuccessPageScreen, including the
/// current registerSuccessPageModelObj
class RegisterSuccessPageController extends GetxController {
  Rx<RegisterSuccessPageModel> registerSuccessPageModelObj =
      RegisterSuccessPageModel().obs;
}
