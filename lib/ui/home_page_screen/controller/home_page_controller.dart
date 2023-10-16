// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/home_page_screen/models/home_page_model.dart';

class HomePageController extends GetxController {
  Rx<HomePageModel> homePage = HomePageModel().obs;
}
