import '../controller/no_contents_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NoContentsScreen.
///
/// This class ensures that the NoContentsController is created when the
/// NoContentsScreen is first loaded.
class NoContentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoContentsController());
  }
}
