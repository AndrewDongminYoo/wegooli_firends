// 🌎 Project imports:
import '../models/_model.dart';
import '/core/app_export.dart';

/// A controller class for the UnsubscriptionConfirmWarnDialog.
///
/// This class manages the state of the UnsubscriptionConfirmWarnDialog, including the
/// current unsubscriptionConfirmWarnModelObj
class UnsubscriptionConfirmWarnController extends GetxController {
  Rx<UnsubscriptionConfirmWarnModel> unsubscriptionConfirmWarnModelObj =
      UnsubscriptionConfirmWarnModel().obs;
}
