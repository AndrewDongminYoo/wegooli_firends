// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the SignupAcceptTermsScreen.
///
/// This class manages the state of the SignupAcceptTermsScreen, including the
/// current signupAcceptTermsModelObj
class AcceptTermsController extends GetxController {
  Rx<SignupAcceptTermsModel> signupAcceptTermsModelObj =
      SignupAcceptTermsModel().obs;
  Rx<bool> isAcceptedTerm0 = false.obs;
  Rx<bool> isAcceptedTerm1 = false.obs;
  Rx<bool> isAcceptedTerm2 = false.obs;
  Rx<bool> isAcceptedTerm3 = false.obs;
  Rx<bool> isAcceptedTerm4 = false.obs;
  Rx<bool> isAcceptedTerm5 = false.obs;
  Rx<bool> isAcceptedTerm6 = false.obs;
}
