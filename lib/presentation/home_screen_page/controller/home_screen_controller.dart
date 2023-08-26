import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/home_screen_page/models/home_screen_model.dart';

/// A controller class for the HomeScreenPage.
///
/// This class manages the state of the HomeScreenPage, including the
/// current homeScreenModelObj
class HomeScreenController extends GetxController {
  HomeScreenController(this.homeScreenModelObj);

  Rx<HomeScreenModel> homeScreenModelObj;

  Rx<int> sliderIndex = 0.obs;
}
