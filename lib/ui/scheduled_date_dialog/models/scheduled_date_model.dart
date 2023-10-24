// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import '/ui/view_scheduled_date_dialog/models/listview_item_model.dart';

class ScheduledDateModel {
  Rx<List<DropdownData>> choices = Rx([
    DropdownData(
      id: 1,
      title: 'Item One',
      isSelected: true,
    ),
    DropdownData(
      id: 2,
      title: 'Item Two',
    ),
    DropdownData(
      id: 3,
      title: 'Item Three',
    )
  ]);

  Rx<List<ListviewItemModel>> listItems =
      Rx(List.generate(3, (_) => ListviewItemModel()));
}
