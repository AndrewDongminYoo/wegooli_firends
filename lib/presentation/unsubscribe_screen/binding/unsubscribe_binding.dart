import '../controller/unsubscribe_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UnsubscribeScreen.
///
/// This class ensures that the UnsubscribeController is created when the
/// UnsubscribeScreen is first loaded.
class UnsubscribeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UnsubscribeController());
  }
}
