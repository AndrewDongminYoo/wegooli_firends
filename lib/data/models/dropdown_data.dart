// 📦 Package imports:
import 'package:get/state_manager.dart';

/// DropdownData is common model
/// used for setting data into dropdowns
class DropdownData {
  DropdownData({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });
  final int? id;
  final String title;
  final dynamic value;
  bool isSelected;
}

extension SelectedModel on List<DropdownData> {
  void onSelected(DropdownData value) {
    for (final element in this) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
  }
}

extension SelectedObservable on Rx<List<DropdownData>> {
  void onSelected(DropdownData value) {
    for (final element in this.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    refresh();
  }
}
