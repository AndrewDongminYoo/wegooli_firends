// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the SplashLoadingScreen.
///
/// This class manages the state of the SplashLoadingScreen, including the
/// current splashLoadingModelObj
class SplashLoadingController extends GetxController {
  Rx<SplashLoadingModel> splashLoadingModelObj = SplashLoadingModel().obs;
}
