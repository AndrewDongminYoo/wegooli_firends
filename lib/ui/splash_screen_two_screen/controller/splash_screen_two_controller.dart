// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/home_page_screen/home_page_screen.dart';
import '/ui/splash_screen_two_screen/models/splash_screen_two_model.dart';

class SplashScreenTwoController extends GetxController {
  Rx<SplashScreenTwoModel> splashScreenTwo = SplashScreenTwoModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        HomePageScreen.routeName,
      );
    });
  }
}
