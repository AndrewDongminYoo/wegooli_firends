// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '../controller/card_list_controller.dart';

class CardListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardListController());
  }
}
