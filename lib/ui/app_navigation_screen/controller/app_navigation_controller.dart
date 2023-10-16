// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/app_navigation_screen/models/app_navigation_model.dart';

class AppNavigationController extends GetxController {
  Rx<AppNavigationModel> appNavigation = AppNavigationModel().obs;
}
