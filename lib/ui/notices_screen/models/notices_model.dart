// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import 'notices_item_model.dart';

class NoticesModel {
  Rx<List<NoticesItemModel>> items =
      Rx(List.generate(9, (_) => NoticesItemModel()));
}
