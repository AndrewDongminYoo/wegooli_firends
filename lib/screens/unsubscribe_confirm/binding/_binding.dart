// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/_controller.dart';

/// A binding class for the UnsubscriptionConfirmScreen.
///
/// This class ensures that the UnsubscriptionConfirmController is created when the
/// UnsubscriptionConfirmScreen is first loaded.
class UnsubscriptionConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UnsubscriptionConfirmController());
  }
}
