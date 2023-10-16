// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/card_list_controller.dart';

/// A binding class for the CardListScreen.
///
/// This class ensures that the CardListController is created when the
/// CardListScreen is first loaded.
class CardListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardListController());
  }
}
