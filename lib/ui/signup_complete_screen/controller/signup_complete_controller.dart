// 🌎 Project imports:
import '/core/app_export.dart';
import '/ui/signup_complete_screen/models/signup_complete_model.dart';

/// A controller class for the SignupCompleteScreen.
///
/// This class manages the state of the SignupCompleteScreen, including the
/// current signupCompleteModelObj
class SignupCompleteController extends GetxController {
  Rx<SignupCompleteModel> signupCompleteModelObj = SignupCompleteModel().obs;
}
