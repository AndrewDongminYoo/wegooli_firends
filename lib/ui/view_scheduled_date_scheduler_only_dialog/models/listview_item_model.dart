/// This class is used in the [listview_item_widget] screen.
class ListviewItemModel {
  ListviewItemModel({
    this.name,
    this.id,
  }) {
    name = name ?? '홍길동';
    id = id ?? '';
  }

  String? name;

  String? id;
}
