// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import 'list_item_model.dart';

class ScheduledDateModel {
  Rx<List<ListItemModel>> listItems =
      Rx(List.generate(3, (_) => ListItemModel()));
}
