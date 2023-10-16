// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/routes/app_routes.dart';
import '/ui/splash_screen_two_screen/models/splash_screen_two_model.dart';

class SplashScreenTwoController extends GetxController {
  Rx<SplashScreenTwoModel> splashScreenTwo = SplashScreenTwoModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.homePageScreen,
      );
    });
  }
}
