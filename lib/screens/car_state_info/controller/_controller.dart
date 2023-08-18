// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the CarStateInformationScreen.
///
/// This class manages the state of the CarStateInformationScreen, including the
/// current carStateInformationModelObj
class CarStateInformationController extends GetxController {
  Rx<CarStateInformationModel> carStateInformationModelObj =
      CarStateInformationModel().obs;
}
