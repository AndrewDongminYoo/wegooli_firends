// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/unsubscribe_confirm_dialog/models/unsubscribe_confirm_model.dart';

/// A controller class for the UnsubscribeConfirmDialog.
///
/// This class manages the state of the UnsubscribeConfirmDialog, including the
/// current unsubscribeConfirmModelObj
class UnsubscribeConfirmController extends GetxController {
  Rx<UnsubscribeConfirmModel> unsubscribeConfirmModelObj =
      UnsubscribeConfirmModel().obs;
}
