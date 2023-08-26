import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/smart_key_unavailable_screen/models/smart_key_unavailable_model.dart';

/// A controller class for the SmartKeyUnavailableScreen.
///
/// This class manages the state of the SmartKeyUnavailableScreen, including the
/// current smartKeyUnavailableModelObj
class SmartKeyUnavailableController extends GetxController {
  Rx<SmartKeyUnavailableModel> smartKeyUnavailableModelObj =
      SmartKeyUnavailableModel().obs;
}
