// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

/// SelectionPopupModel is common model
/// used for setting data into dropdowns
class SelectionPopupModel {
  SelectionPopupModel({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });
  int? id;
  String title;
  dynamic value;
  bool isSelected;
}

extension SelectedModel on List<SelectionPopupModel> {
  void onSelected(SelectionPopupModel value) {
    for (final element in this) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
  }
}

extension SelectedObservable on Rx<List<SelectionPopupModel>> {
  void onSelected(SelectionPopupModel value) {
    for (final element in this.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    refresh();
  }
}
