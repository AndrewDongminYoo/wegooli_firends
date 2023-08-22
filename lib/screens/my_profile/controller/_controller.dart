// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the MyProfilePage.
///
/// This class manages the state of the MyProfilePage, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {
  MyProfileController(this.myProfileModelObj);

  Rx<MyProfileModel> myProfileModelObj;
}
