// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import 'notices_item_model.dart';

class NoticesModel {
  Rx<List<NoticesItemModel>> noticesItemList =
      Rx(List.generate(9, (index) => NoticesItemModel()));
}
