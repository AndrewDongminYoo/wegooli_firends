import '../../../core/app_export.dart';

/// This class is used in the [listview_item_widget] screen.
class ListviewItemModel {
  ListviewItemModel({
    this.value,
    this.id,
  }) {
    value = value ?? Rx('홍길동');
    id = id ?? Rx('');
  }

  Rx<String>? value;

  Rx<String>? id;
}
