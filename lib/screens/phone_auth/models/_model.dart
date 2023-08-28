// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/selection_popup.dart';

/// This class defines the variables used in the [phone_auth],
/// and is typically used to hold data that is passed between different parts of the application.
class PhoneProviderModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(id: 1, title: "SKT", isSelected: true),
    SelectionPopupModel(id: 2, title: "KT"),
    SelectionPopupModel(id: 3, title: "LG"),
  ]);
}
