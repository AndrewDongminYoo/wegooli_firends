// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the RegisterSuccessPageScreen.
///
/// This class manages the state of the RegisterSuccessPageScreen, including the
/// current registerSuccessPageModelObj
class RegisterSuccessPageController extends GetxController {
  Rx<RegisterSuccessPageModel> registerSuccessPageModelObj =
      RegisterSuccessPageModel().obs;
}
