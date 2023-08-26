import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/smart_key_available_page/models/smart_key_available_model.dart';

/// A controller class for the SmartKeyAvailablePage.
///
/// This class manages the state of the SmartKeyAvailablePage, including the
/// current smartKeyAvailableModelObj
class SmartKeyAvailableController extends GetxController {
  SmartKeyAvailableController(this.smartKeyAvailableModelObj);

  Rx<SmartKeyAvailableModel> smartKeyAvailableModelObj;
}
