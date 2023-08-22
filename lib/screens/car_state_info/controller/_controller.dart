// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the CarStateInformationScreen.
///
/// This class manages the state of the CarStateInformationScreen, including the
/// current carStateInformationModelObj
class CarStateInformationController extends GetxController {
  Rx<CarStateInformationModel> carStateInformationModelObj =
      CarStateInformationModel().obs;
}
