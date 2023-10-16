import '../../../core/app_export.dart';

/// This class is used in the [listview_item_widget] screen.
class ListviewItemModel {
  ListviewItemModel({
    this.Txt,
    this.id,
  }) {
    Txt = Txt ?? Rx('홍길동');
    id = id ?? Rx('');
  }

  Rx<String>? Txt;

  Rx<String>? id;
}
