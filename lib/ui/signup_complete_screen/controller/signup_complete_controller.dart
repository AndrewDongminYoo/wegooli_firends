// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/signup_complete_screen/models/signup_complete_model.dart';

class SignupCompleteController extends GetxController {
  Rx<SignupCompleteModel> signupComplete = SignupCompleteModel().obs;
}
