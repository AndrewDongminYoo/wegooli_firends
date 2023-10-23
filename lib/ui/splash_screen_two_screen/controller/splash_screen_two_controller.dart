// 📦 Package imports:
import 'package:get/route_manager.dart' show Get, GetNavigation;
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/ui/home_page_screen/home_page_screen.dart';

class SplashScreenTwoController extends GetxController {
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        HomePageScreen.routeName,
      );
    });
  }
}
