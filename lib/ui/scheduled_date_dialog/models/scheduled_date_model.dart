// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/ui/view_scheduled_date_dialog/models/listview_item_model.dart';

class ScheduledDateModel {
  Rx<List<ListItemModel>> listItems =
      Rx(List.generate(3, (_) => ListItemModel()));
}
