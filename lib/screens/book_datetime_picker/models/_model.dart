// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/selection_popup.dart';

/// This class defines the variables used in the [reservation_datetime_picker_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ReservationDatetimePickerModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
