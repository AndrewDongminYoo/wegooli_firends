import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/car_status_info_screen/models/car_status_info_model.dart';

/// A controller class for the CarStatusInfoScreen.
///
/// This class manages the state of the CarStatusInfoScreen, including the
/// current carStatusInfoModelObj
class CarStatusInfoController extends GetxController {
  Rx<CarStatusInfoModel> carStatusInfoModelObj = CarStatusInfoModel().obs;
}
