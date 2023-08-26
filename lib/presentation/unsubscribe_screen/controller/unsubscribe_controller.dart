import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/unsubscribe_screen/models/unsubscribe_model.dart';

/// A controller class for the UnsubscribeScreen.
///
/// This class manages the state of the UnsubscribeScreen, including the
/// current unsubscribeModelObj
class UnsubscribeController extends GetxController {
  Rx<UnsubscribeModel> unsubscribeModelObj = UnsubscribeModel().obs;
}
