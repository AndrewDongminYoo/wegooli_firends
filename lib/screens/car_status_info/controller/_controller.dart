// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the CarStatusInformationScreen.
///
/// This class manages the state of the CarStatusInformationScreen, including the
/// current carStatusInformationModelObj
class CarStatusInformationController extends GetxController {
  Rx<CarStatusInformationModel> carStatusInformationModelObj =
      CarStatusInformationModel().obs;
}
