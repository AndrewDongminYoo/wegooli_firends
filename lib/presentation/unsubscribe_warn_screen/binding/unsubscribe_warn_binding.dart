import '../controller/unsubscribe_warn_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UnsubscribeWarnScreen.
///
/// This class ensures that the UnsubscribeWarnController is created when the
/// UnsubscribeWarnScreen is first loaded.
class UnsubscribeWarnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UnsubscribeWarnController());
  }
}
