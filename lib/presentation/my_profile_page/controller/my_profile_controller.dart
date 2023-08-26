import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/my_profile_page/models/my_profile_model.dart';

/// A controller class for the MyProfilePage.
///
/// This class manages the state of the MyProfilePage, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {
  MyProfileController(this.myProfileModelObj);

  Rx<MyProfileModel> myProfileModelObj;
}
