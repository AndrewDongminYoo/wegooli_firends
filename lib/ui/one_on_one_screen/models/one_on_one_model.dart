// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';
import 'listaddphotoalt_item_model.dart';

class OneOnOneModel {
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

  Rx<List<ListAddPhotoAltItemModel>> items =
      Rx(List.generate(5, (_) => ListAddPhotoAltItemModel()));
}
