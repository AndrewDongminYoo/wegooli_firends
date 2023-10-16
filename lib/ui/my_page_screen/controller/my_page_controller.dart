// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/my_page_screen/models/my_page_model.dart';

class MyPageController extends GetxController {
  Rx<MyPageModel> myPage = MyPageModel().obs;
}
