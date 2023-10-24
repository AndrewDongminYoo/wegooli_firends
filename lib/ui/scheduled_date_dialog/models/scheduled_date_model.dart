// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

// 🌎 Project imports:
import 'list_item_model.dart';

class ScheduledDateModel {
  Rx<List<ListItemModel>> listItems =
      Rx(List.generate(3, (_) => ListItemModel()));
}
