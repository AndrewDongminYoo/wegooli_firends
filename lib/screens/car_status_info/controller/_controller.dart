// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the CarStatusInformationScreen.
///
/// This class manages the state of the CarStatusInformationScreen, including the
/// current carStatusInformationModelObj
class CarStatusInformationController extends GetxController {
  Rx<CarStatusInformationModel> carStatusInformationModelObj =
      CarStatusInformationModel().obs;
}
