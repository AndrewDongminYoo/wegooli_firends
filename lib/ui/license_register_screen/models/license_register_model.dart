// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';

class LicenseRegisterModel {
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

  Rx<List<DropdownData>> choices1 = Rx([
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
}
