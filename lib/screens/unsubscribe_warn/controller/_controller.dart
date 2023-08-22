// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the UnsubscriptionConfirmWarnDialog.
///
/// This class manages the state of the UnsubscriptionConfirmWarnDialog, including the
/// current unsubscriptionConfirmWarnModelObj
class UnsubscriptionConfirmWarnController extends GetxController {
  Rx<UnsubscriptionConfirmWarnModel> unsubscriptionConfirmWarnModelObj =
      UnsubscriptionConfirmWarnModel().obs;
}
