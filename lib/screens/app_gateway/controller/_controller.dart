// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the AppGatewayScreen.
///
/// This class manages the state of the AppGatewayScreen, including the
/// current appNavigationModelObj
class AppGatewayController extends GetxController {
  Rx<AppGatewayModel> appNavigationModelObj = AppGatewayModel().obs;
}
