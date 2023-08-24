// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/data/models/selection_popup.dart';

/// This class defines the variables used in the [register_license],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisterLicensePageModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "1종 보통",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "2종 보통",
    ),
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "서울",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "인천",
    ),
    SelectionPopupModel(
      id: 3,
      title: "...",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
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
