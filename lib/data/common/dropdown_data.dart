// 📦 Package imports:
import 'package:get/get_rx/get_rx.dart';

/// 드롭다운데이터는 데이터를 드롭다운으로 설정하는 데 사용되는 일반적인 모델입니다.
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
