// 📦 Package imports:
import 'package:get/instance_manager.dart';

// 🌎 Project imports:
import '../controller/card_list_controller.dart';

class CardListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(CardListController.new);
  }
}
