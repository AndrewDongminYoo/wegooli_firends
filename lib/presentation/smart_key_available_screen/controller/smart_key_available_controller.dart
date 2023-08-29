import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/smart_key_available_screen/models/smart_key_available_model.dart';

/// A controller class for the SmartKeyAvailableScreen.
///
/// This class manages the state of the SmartKeyAvailableScreen, including the
/// current smartKeyAvailableModelObj
class SmartKeyAvailableController extends GetxController {
  Rx<SmartKeyAvailableModel> smartKeyAvailableModelObj =
      SmartKeyAvailableModel().obs;
}
