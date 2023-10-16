// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/app_navigation_screen/models/app_navigation_model.dart';

/// A controller class for the AppNavigationScreen.
///
/// This class manages the state of the AppNavigationScreen, including the
/// current appNavigationModelObj
class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;
}
