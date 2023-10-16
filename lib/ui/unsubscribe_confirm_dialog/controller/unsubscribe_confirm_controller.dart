// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/unsubscribe_confirm_dialog/models/unsubscribe_confirm_model.dart';

class UnsubscribeConfirmController extends GetxController {
  Rx<UnsubscribeConfirmModel> unsubscribeConfirm =
      UnsubscribeConfirmModel().obs;
}
