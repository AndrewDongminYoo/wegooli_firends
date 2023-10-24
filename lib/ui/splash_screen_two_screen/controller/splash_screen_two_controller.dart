// 📦 Package imports:
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

// 🌎 Project imports:
import '/ui/home_page_screen/home_page_screen.dart';

class SplashScreenTwoController extends GetxController {
  @override
  void onReady() {
    Future.delayed(3000.milliseconds, () {
      Get.offNamed(
        HomePageScreen.routeName,
      );
    });
  }
}
