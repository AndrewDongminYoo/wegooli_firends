import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/one_screen/models/one_model.dart';

/// A controller class for the OneScreen.
///
/// This class manages the state of the OneScreen, including the
/// current oneModelObj
class OneController extends GetxController {
  Rx<OneModel> oneModelObj = OneModel().obs;
}
