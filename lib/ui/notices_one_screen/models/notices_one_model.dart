// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'notices_one_item_model.dart';

class NoticesOneModel {
  Rx<List<NoticesOneItemModel>> noticesOneItemList =
      Rx(List.generate(9, (index) => NoticesOneItemModel()));
}
