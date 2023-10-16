// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/my_page_screen/models/my_page_model.dart';

/// A controller class for the MyPageScreen.
///
/// This class manages the state of the MyPageScreen, including the
/// current myPageModelObj
class MyPageController extends GetxController {
  Rx<MyPageModel> myPageModelObj = MyPageModel().obs;
}
