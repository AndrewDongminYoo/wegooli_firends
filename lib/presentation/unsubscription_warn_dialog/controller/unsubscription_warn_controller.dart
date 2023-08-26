import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/unsubscription_warn_dialog/models/unsubscription_warn_model.dart';

/// A controller class for the UnsubscriptionWarnDialog.
///
/// This class manages the state of the UnsubscriptionWarnDialog, including the
/// current unsubscriptionWarnModelObj
class UnsubscriptionWarnController extends GetxController {
  Rx<UnsubscriptionWarnModel> unsubscriptionWarnModelObj =
      UnsubscriptionWarnModel().obs;
}
