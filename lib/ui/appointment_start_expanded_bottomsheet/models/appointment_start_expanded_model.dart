// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/dropdown_data.dart';

/// This class defines the variables used in the [appointment_start_expanded_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentStartExpandedModel {
  Rx<List<DropdownData>> dropdownItemList = Rx([
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
