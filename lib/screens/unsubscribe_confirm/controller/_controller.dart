// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../models/_model.dart';

/// A controller class for the UnsubscriptionConfirmScreen.
///
/// This class manages the state of the UnsubscriptionConfirmScreen, including the
/// current unsubscriptionConfirmModelObj
class UnsubscriptionConfirmController extends GetxController {
  Rx<UnsubscriptionConfirmModel> unsubscriptionConfirmModelObj =
      UnsubscriptionConfirmModel().obs;
}
