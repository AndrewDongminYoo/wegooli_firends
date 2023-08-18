// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the LoginRegisterSuccessPageScreen.
///
/// This class manages the state of the LoginRegisterSuccessPageScreen, including the
/// current registerSuccessPageModelObj
class LoginRegisterSuccessPageController extends GetxController {
  Rx<LoginRegisterSuccessPageModel> registerSuccessPageModelObj =
      LoginRegisterSuccessPageModel().obs;
}
