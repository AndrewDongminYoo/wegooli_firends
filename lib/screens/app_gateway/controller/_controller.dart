// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the AppGatewayScreen.
///
/// This class manages the state of the AppGatewayScreen, including the
/// current appNavigationModelObj
class AppGatewayController extends GetxController {
  Rx<AppGatewayModel> appNavigationModelObj = AppGatewayModel().obs;
}
