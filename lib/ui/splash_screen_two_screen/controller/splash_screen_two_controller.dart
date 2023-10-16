// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/routes/app_routes.dart';
import '/ui/splash_screen_two_screen/models/splash_screen_two_model.dart';

/// A controller class for the SplashScreenTwoScreen.
///
/// This class manages the state of the SplashScreenTwoScreen, including the
/// current splashScreenTwoModelObj
class SplashScreenTwoController extends GetxController {
  Rx<SplashScreenTwoModel> splashScreenTwoModelObj = SplashScreenTwoModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homePageScreen,
      );
    });
  }
}
