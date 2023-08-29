import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/unsubscribe_warn_screen/models/unsubscribe_warn_model.dart';

/// A controller class for the UnsubscribeWarnScreen.
///
/// This class manages the state of the UnsubscribeWarnScreen, including the
/// current unsubscribeWarnModelObj
class UnsubscribeWarnController extends GetxController {
  Rx<UnsubscribeWarnModel> unsubscribeWarnModelObj = UnsubscribeWarnModel().obs;
}
